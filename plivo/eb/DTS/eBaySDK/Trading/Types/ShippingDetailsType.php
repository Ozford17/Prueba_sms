<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\Trading\Types;

/**
 *
 * @property boolean $GlobalShipping
 * @property \DTS\eBaySDK\Trading\Types\CalculatedShippingRateType $CalculatedShippingRate
 * @property boolean $ChangePaymentInstructions
 * @property \DTS\eBaySDK\Trading\Types\AmountType $InsuranceFee
 * @property \DTS\eBaySDK\Trading\Enums\InsuranceOptionCodeType $InsuranceOption
 * @property boolean $InsuranceWanted
 * @property boolean $PaymentEdited
 * @property string $PaymentInstructions
 * @property \DTS\eBaySDK\Trading\Types\SalesTaxType $SalesTax
 * @property string $ShippingRateErrorMessage
 * @property \DTS\eBaySDK\Trading\Enums\ShippingRateTypeCodeType $ShippingRateType
 * @property \DTS\eBaySDK\Trading\Types\ShippingServiceOptionsType[] $ShippingServiceOptions
 * @property \DTS\eBaySDK\Trading\Types\InternationalShippingServiceOptionsType[] $InternationalShippingServiceOption
 * @property \DTS\eBaySDK\Trading\Enums\ShippingTypeCodeType $ShippingType
 * @property integer $SellingManagerSalesRecordNumber
 * @property \DTS\eBaySDK\Trading\Types\TaxTableType $TaxTable
 * @property string $ShippingServiceUsed
 * @property \DTS\eBaySDK\Trading\Types\AmountType $DefaultShippingCost
 * @property \DTS\eBaySDK\Trading\Types\InsuranceDetailsType $InsuranceDetails
 * @property \DTS\eBaySDK\Trading\Types\InsuranceDetailsType $InternationalInsuranceDetails
 * @property string $ShippingDiscountProfileID
 * @property \DTS\eBaySDK\Trading\Types\FlatShippingDiscountType $FlatShippingDiscount
 * @property \DTS\eBaySDK\Trading\Types\CalculatedShippingDiscountType $CalculatedShippingDiscount
 * @property boolean $PromotionalShippingDiscount
 * @property string $InternationalShippingDiscountProfileID
 * @property \DTS\eBaySDK\Trading\Types\FlatShippingDiscountType $InternationalFlatShippingDiscount
 * @property \DTS\eBaySDK\Trading\Types\CalculatedShippingDiscountType $InternationalCalculatedShippingDiscount
 * @property boolean $InternationalPromotionalShippingDiscount
 * @property \DTS\eBaySDK\Trading\Types\PromotionalShippingDiscountDetailsType $PromotionalShippingDiscountDetails
 * @property \DTS\eBaySDK\Trading\Types\AmountType $CODCost
 * @property string[] $ExcludeShipToLocation
 * @property boolean $SellerExcludeShipToLocationsPreference
 * @property \DTS\eBaySDK\Trading\Types\ShipmentTrackingDetailsType[] $ShipmentTrackingDetails
 * @property \DTS\eBaySDK\Trading\Types\RateTableDetailsType $RateTableDetails
 */
class ShippingDetailsType extends \DTS\eBaySDK\Types\BaseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'GlobalShipping' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GlobalShipping'
        ],
        'CalculatedShippingRate' => [
            'type' => 'DTS\eBaySDK\Trading\Types\CalculatedShippingRateType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CalculatedShippingRate'
        ],
        'ChangePaymentInstructions' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ChangePaymentInstructions'
        ],
        'InsuranceFee' => [
            'type' => 'DTS\eBaySDK\Trading\Types\AmountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InsuranceFee'
        ],
        'InsuranceOption' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InsuranceOption'
        ],
        'InsuranceWanted' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InsuranceWanted'
        ],
        'PaymentEdited' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PaymentEdited'
        ],
        'PaymentInstructions' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PaymentInstructions'
        ],
        'SalesTax' => [
            'type' => 'DTS\eBaySDK\Trading\Types\SalesTaxType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'SalesTax'
        ],
        'ShippingRateErrorMessage' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ShippingRateErrorMessage'
        ],
        'ShippingRateType' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ShippingRateType'
        ],
        'ShippingServiceOptions' => [
            'type' => 'DTS\eBaySDK\Trading\Types\ShippingServiceOptionsType',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'ShippingServiceOptions'
        ],
        'InternationalShippingServiceOption' => [
            'type' => 'DTS\eBaySDK\Trading\Types\InternationalShippingServiceOptionsType',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'InternationalShippingServiceOption'
        ],
        'ShippingType' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ShippingType'
        ],
        'SellingManagerSalesRecordNumber' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'SellingManagerSalesRecordNumber'
        ],
        'TaxTable' => [
            'type' => 'DTS\eBaySDK\Trading\Types\TaxTableType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'TaxTable'
        ],
        'ShippingServiceUsed' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ShippingServiceUsed'
        ],
        'DefaultShippingCost' => [
            'type' => 'DTS\eBaySDK\Trading\Types\AmountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'DefaultShippingCost'
        ],
        'InsuranceDetails' => [
            'type' => 'DTS\eBaySDK\Trading\Types\InsuranceDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InsuranceDetails'
        ],
        'InternationalInsuranceDetails' => [
            'type' => 'DTS\eBaySDK\Trading\Types\InsuranceDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InternationalInsuranceDetails'
        ],
        'ShippingDiscountProfileID' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ShippingDiscountProfileID'
        ],
        'FlatShippingDiscount' => [
            'type' => 'DTS\eBaySDK\Trading\Types\FlatShippingDiscountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'FlatShippingDiscount'
        ],
        'CalculatedShippingDiscount' => [
            'type' => 'DTS\eBaySDK\Trading\Types\CalculatedShippingDiscountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CalculatedShippingDiscount'
        ],
        'PromotionalShippingDiscount' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PromotionalShippingDiscount'
        ],
        'InternationalShippingDiscountProfileID' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InternationalShippingDiscountProfileID'
        ],
        'InternationalFlatShippingDiscount' => [
            'type' => 'DTS\eBaySDK\Trading\Types\FlatShippingDiscountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InternationalFlatShippingDiscount'
        ],
        'InternationalCalculatedShippingDiscount' => [
            'type' => 'DTS\eBaySDK\Trading\Types\CalculatedShippingDiscountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InternationalCalculatedShippingDiscount'
        ],
        'InternationalPromotionalShippingDiscount' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'InternationalPromotionalShippingDiscount'
        ],
        'PromotionalShippingDiscountDetails' => [
            'type' => 'DTS\eBaySDK\Trading\Types\PromotionalShippingDiscountDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PromotionalShippingDiscountDetails'
        ],
        'CODCost' => [
            'type' => 'DTS\eBaySDK\Trading\Types\AmountType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CODCost'
        ],
        'ExcludeShipToLocation' => [
            'type' => 'string',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'ExcludeShipToLocation'
        ],
        'SellerExcludeShipToLocationsPreference' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'SellerExcludeShipToLocationsPreference'
        ],
        'ShipmentTrackingDetails' => [
            'type' => 'DTS\eBaySDK\Trading\Types\ShipmentTrackingDetailsType',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'ShipmentTrackingDetails'
        ],
        'RateTableDetails' => [
            'type' => 'DTS\eBaySDK\Trading\Types\RateTableDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'RateTableDetails'
        ]
    ];

    /**
     * @param array $values Optional properties and values to assign to the object.
     */
    public function __construct(array $values = [])
    {
        list($parentValues, $childValues) = self::getParentValues(self::$propertyTypes, $values);

        parent::__construct($parentValues);

        if (!array_key_exists(__CLASS__, self::$properties)) {
            self::$properties[__CLASS__] = array_merge(self::$properties[get_parent_class()], self::$propertyTypes);
        }

        if (!array_key_exists(__CLASS__, self::$xmlNamespaces)) {
            self::$xmlNamespaces[__CLASS__] = 'xmlns="urn:ebay:apis:eBLBaseComponents"';
        }

        $this->setValues(__CLASS__, $childValues);
    }
}
