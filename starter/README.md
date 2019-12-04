# ether-voting
This application implements the basic Dapp University example for voting
through the Ethereum smart contract platform.

## Running this code

### Prerequisites
+ NodeJS
+ Ganache
+ Metamask or another Ethereum wallet client

### Installation
0. Make sure you have a wallet account with your preferred wallet client. If not you'll have to make it before you can use the application.

1. Make sure all preqrequisites are installed and configured first. You may want to add Ganache to your $PATH environment variable so you can start it from anywhere.

2. Download this repository and save it somewhere you can access it.

3. Open a terminal/Powershell and cd to the repositories directory from the previous step.

4. Type `npm install`. If you run into issues with this step, particularly concerning permissions, see [npmjs - Resoloving EACCES](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally).

5. Start Ganache.

6. Either add this project to an existing workspace or create a new workspace. For instructions on adding a project to Ganache, see [trufflesuite - Linking a Project](https://www.trufflesuite.com/docs/ganache/truffle-projects/linking-a-truffle-project)

7. Add one of the pre-seeded Ganache accounts to your Wallet client. To do this, you need to import the accounts private key into the wallet. For instructions specific to Metamask see [medium - Importing wallet into Metamask account](https://medium.com/publicaio/how-import-a-wallet-to-your-metamask-account-dcaba25e558d).

8. Add the Ganache RPC server to your Wallet client. Metamask specific instructions can be found here: [trufflesuite - Truffle and Metamask](https://www.trufflesuite.com/docs/truffle/getting-started/truffle-with-metamask).

9. Compile and migrate the project onto your local Ethereum (Ganache) blockchain.
  0. Optinonally test the project using: `truffle test` - currently there are no tests written for the application.
  1. `truffle compile`
  2. `truffle migrate`
  
10. If migrating succeeded, start the application: `npm run dev`

11. Connect the application to your Metamask account when prompted and your good to go.
