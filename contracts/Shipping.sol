pragma solidity ^0.8.9;


/**
 * @title Shipping
 * @dev Un contrato para registrar el estado de envío de un paquete.
 */

contract Shipping {

    enum ShippingStatus {
        Pending, //Pendiente
        Shipped, // Enviado
        Delivered //  Entregado
    }

    ShippingStatus private status;

    event LogNewAlert(string description);

    /**
     * @dev Constructor que establece el estado inicial en "Pendiente".
     */
    constructor() public {
        status = ShippingStatus.Pending;
    }

     /**
     * @notice Actualiza el estado de envío a "Enviado".
     */
    function Shipped() public {
        status = ShippingStatus.Shipped;
        emit LogNewAlert("Your package has been shipped");
    }

    /**
     * @notice Actualiza el estado de envío a "Entregado".
     */
    function Delivered() public {
        status = ShippingStatus.Delivered;
        emit LogNewAlert("Your package has arrived");
    }

    /**
    * @dev Devuelve el estado de envío actual en formato legible.
    * @param _status El estado de envío actual.
    * @return El estado de envío actual.
     */
    function getStatus(ShippingStatus _status)
        internal
        pure
        returns (string memory)
    {
        if (ShippingStatus.Pending == _status) return "Pending";

        if (ShippingStatus.Shipped == _status) return "Shipped";

        if (ShippingStatus.Delivered == _status) return "Delivered";
    }

    /**
     * @notice Devuelve el estado de envío actual en formato legible.
     * @return El estado de envío actual.
     */
    function Status() public view returns (string memory) {
        ShippingStatus _status = status;
        return getStatus(_status);
    }
}
