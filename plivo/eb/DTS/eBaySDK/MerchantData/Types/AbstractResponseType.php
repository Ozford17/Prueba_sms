<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\MerchantData\Types;

/**
 *
 * @property \DateTime $Timestamp
 * @property \DTS\eBaySDK\MerchantData\Enums\AckCodeType $Ack
 * @property string $CorrelationID
 * @property \DTS\eBaySDK\MerchantData\Types\ErrorType[] $Errors
 * @property string $Message
 * @property string $Version
 * @property string $Build
 * @property string $NotificationEventName
 * @property \DTS\eBaySDK\MerchantData\Types\DuplicateInvocationDetailsType $DuplicateInvocationDetails
 * @property string $RecipientUserID
 * @property string $EIASToken
 * @property string $NotificationSignature
 * @property string $HardExpirationWarning
 * @property \DTS\eBaySDK\MerchantData\Types\BotBlockResponseType $BotBlock
 * @property string $ExternalUserData
 */
class AbstractResponseType extends \DTS\eBaySDK\Types\BaseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'Timestamp' => [
            'type' => 'DateTime',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'Timestamp'
        ],
        'Ack' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'Ack'
        ],
        'CorrelationID' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'CorrelationID'
        ],
        'Errors' => [
            'type' => 'DTS\eBaySDK\MerchantData\Types\ErrorType',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'Errors'
        ],
        'Message' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'Message'
        ],
        'Version' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'Version'
        ],
        'Build' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'Build'
        ],
        'NotificationEventName' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NotificationEventName'
        ],
        'DuplicateInvocationDetails' => [
            'type' => 'DTS\eBaySDK\MerchantData\Types\DuplicateInvocationDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'DuplicateInvocationDetails'
        ],
        'RecipientUserID' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'RecipientUserID'
        ],
        'EIASToken' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'EIASToken'
        ],
        'NotificationSignature' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'NotificationSignature'
        ],
        'HardExpirationWarning' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'HardExpirationWarning'
        ],
        'BotBlock' => [
            'type' => 'DTS\eBaySDK\MerchantData\Types\BotBlockResponseType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'BotBlock'
        ],
        'ExternalUserData' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ExternalUserData'
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
