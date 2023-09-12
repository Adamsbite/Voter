import { ethers } from "hardhat";

async function main() {
    const Voting = await ethers.getContractFactory("Voting");
    const voting = await Voting.deploy(["Proposal 1", "Proposal 2", "Proposal 3"]);

    await voting.deployed();
    console.log("Voting deployed to:", voting.address);

    const [owner, addr1] = await ethers.getSigners();

    // Vote for the first proposal
    await voting.connect(addr1).vote(0);

    // Get the current vote count for the first proposal
    const proposal1 = await voting.proposals(0);
    console.log("Proposal 1 vote count:", proposal1.voteCount.toString());
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });


    const { ethers } = require("hardhat");

async function main() {
  // Deploying the Voting contract
  const Voting = await ethers.getContractFactory("Voting");
  const voting = await Voting.deploy(["Proposal 1", "Proposal 2", "Proposal 3"]); // Update the proposal descriptions as needed
  await voting.deployed();

  console.log("Voting contract deployed to:", voting.address);
}

// Executing the main function
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
,