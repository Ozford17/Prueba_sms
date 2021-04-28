<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\BusinessPoliciesManagement\Types;

/**
 *
 * @property string[] $acceptedPaymentMethod
 * @property boolean $immediatePay
 * @property string $paymentInstructions
 * @property string $paypalEmailAddress
 * @property \DTS\eBaySDK\BusinessPoliciesManagement\Types\DepositDetails $depositDetails
 * @property integer $daysToFullPayment
 */
class PaymentInfo extends \DTS\eBaySDK\Types\BaseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'acceptedPaymentMethod' => [
            'type' => 'string',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'acceptedPaymentMethod'
        ],
        'immediatePay' => [
            'type' => 'boolean',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'immediatePay'
        ],
        'paymentInstructions' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'paymentInstructions'
        ],
        'paypalEmailAddress' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'paypalEmailAddress'
        ],
        'depositDetails' => [
            'type' => 'DTS\eBaySDK\BusinessPoliciesManagement\Types\DepositDetails',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'depositDetails'
        ],
        'daysToFullPayment' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'daysToFullPayment'
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
            self::$xmlNamespaces[__CLASS__] = 'xmlns="http://www.ebay.com/marketplace/selling/v1/services"';
        }

        $this->setValues(__CLASS__, $childValues);
    }
}
