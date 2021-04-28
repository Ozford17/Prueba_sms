<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\Trading\Types;

/**
 *
 * @property integer $PositiveFeedbackLeftCount
 * @property integer $NegativeFeedbackLeftCount
 * @property integer $NeutralFeedbackLeftCount
 * @property double $FeedbackLeftPercent
 * @property integer $RepeatBuyerCount
 * @property double $RepeatBuyerPercent
 * @property integer $UniqueBuyerCount
 * @property double $TransactionPercent
 * @property integer $CrossBorderTransactionCount
 * @property double $CrossBorderTransactionPercent
 */
class SellerRoleMetricsType extends \DTS\eBaySDK\Types\BaseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'PositiveFeedbackLeftCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PositiveFeedbackLeftCount'
        ],
        'NegativeFeedbackLeftCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NegativeFeedbackLeftCount'
        ],
        'NeutralFeedbackLeftCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NeutralFeedbackLeftCount'
        ],
        'FeedbackLeftPercent' => [
            'type' => 'double',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'FeedbackLeftPercent'
        ],
        'RepeatBuyerCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'RepeatBuyerCount'
        ],
        'RepeatBuyerPercent' => [
            'type' => 'double',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'RepeatBuyerPercent'
        ],
        'UniqueBuyerCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'UniqueBuyerCount'
        ],
        'TransactionPercent' => [
            'type' => 'double',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'TransactionPercent'
        ],
        'CrossBorderTransactionCount' => [
            'type' => 'integer',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CrossBorderTransactionCount'
        ],
        'CrossBorderTransactionPercent' => [
            'type' => 'double',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CrossBorderTransactionPercent'
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
