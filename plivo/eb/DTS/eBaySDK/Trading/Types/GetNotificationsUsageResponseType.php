<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\Trading\Types;

/**
 *
 * @property \DateTime $StartTime
 * @property \DateTime $EndTime
 * @property \DTS\eBaySDK\Trading\Types\NotificationDetailsArrayType $NotificationDetailsArray
 * @property \DTS\eBaySDK\Trading\Types\MarkUpMarkDownHistoryType $MarkUpMarkDownHistory
 * @property \DTS\eBaySDK\Trading\Types\NotificationStatisticsType $NotificationStatistics
 */
class GetNotificationsUsageResponseType extends \DTS\eBaySDK\Trading\Types\AbstractResponseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'StartTime' => [
            'type' => 'DateTime',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'StartTime'
        ],
        'EndTime' => [
            'type' => 'DateTime',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'EndTime'
        ],
        'NotificationDetailsArray' => [
            'type' => 'DTS\eBaySDK\Trading\Types\NotificationDetailsArrayType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NotificationDetailsArray'
        ],
        'MarkUpMarkDownHistory' => [
            'type' => 'DTS\eBaySDK\Trading\Types\MarkUpMarkDownHistoryType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'MarkUpMarkDownHistory'
        ],
        'NotificationStatistics' => [
            'type' => 'DTS\eBaySDK\Trading\Types\NotificationStatisticsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NotificationStatistics'
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
