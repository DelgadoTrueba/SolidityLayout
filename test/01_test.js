const StorageFactory = artifacts.require('Storage');
const MachineFactory = artifacts.require('Machine');
const BN = web3.utils.BN;

contract('Machine', accounts => {
    
    const [owner, ...others] = accounts;
    let Storage, Machine;

    beforeEach(async () => {
        Storage = await StorageFactory.new(new BN('0'));
        Machine = await MachineFactory.new(Storage.address);
    });
    
    describe('#saveValue()', () => {

        it('should successfully save value', async () => {
            await Machine.saveValue(new BN('54'));
            let aux = await Storage.val();
            console.log(aux);
        });

    });

});