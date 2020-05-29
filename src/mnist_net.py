import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

from torchvision import transforms, datasets

train = datasets.MNIST("", train=True, download=True, transform=transforms.Compose([transforms.ToTensor()]))

test = datasets.MNIST("", train=False, download=True, transform=transforms.Compose([transforms.ToTensor()]))

trainset = torch.utils.data.DataLoader(train, batch_size=64, shuffle=True)
testset = torch.utils.data.DataLoader(test, batch_size=1000, shuffle=True)


class Net(nn.Module):
    def __init__(self):
        super().__init__()
        self.fully_connected_layer1 = nn.Linear(784, 64)
        self.fully_connected_layer2 = nn.Linear(64, 64)
        self.fully_connected_layer3 = nn.Linear(64, 64)
        self.fully_connected_layer4 = nn.Linear(64, 10)

    def forward(self, x):
        # activation function
        x = F.relu(self.fully_connected_layer1(x))
        x = F.relu(self.fully_connected_layer2(x))
        x = F.relu(self.fully_connected_layer3(x))
        x = self.fully_connected_layer4(x)
        return F.log_softmax(x, dim=1)


net = Net()

optimizer = optim.Adam(net.parameters(), lr=1e-3)

EPOCHS = 10

net.train()
for epoch in range(EPOCHS):
    for data in trainset:
        X, y = data
        net.zero_grad()
        output = net(X.view(-1, 28 ** 2))
        loss = F.nll_loss(output, y)
        loss.backward()
        optimizer.step()

correct = 0
total = 0

net.eval()
with torch.no_grad():
    for data in testset:
        X, y = data
        output = net(X.view(-1, 28 * 28))
        for idx, i in enumerate(output):
            if torch.argmax(i) == y[idx]:
                correct += 1
            total += 1

print('Accuracy:', round(correct / total, 3))

# torch.save(net.state_dict(), 'linear_mnist.pth')

# Load a sample image
example_image, example_label = next(iter(trainset))
# run the tracing
traced_script_module = torch.jit.trace(net, example_image.view(-1, 28 ** 2))
# save the converted model
# traced_script_module.save("traced_linear_mnist.pt")
