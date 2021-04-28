<?php
/**
 * The contents of this file was generated using the WSDLs as provided by eBay.
 *
 * DO NOT EDIT THIS FILE!
 */

namespace DTS\eBaySDK\MerchantData\Types;

/**
 *
 * @property \DTS\eBaySDK\MerchantData\Enums\GalleryTypeCodeType $GalleryType
 * @property string $GalleryURL
 * @property \DTS\eBaySDK\MerchantData\Enums\PhotoDisplayCodeType $PhotoDisplay
 * @property string[] $PictureURL
 * @property \DTS\eBaySDK\MerchantData\Enums\PictureSourceCodeType $PictureSource
 * @property string $GalleryDuration
 * @property \DTS\eBaySDK\MerchantData\Enums\GalleryStatusCodeType $GalleryStatus
 * @property string $GalleryErrorInfo
 * @property string[] $ExternalPictureURL
 * @property \DTS\eBaySDK\MerchantData\Types\ExtendedPictureDetailsType $ExtendedPictureDetails
 */
class PictureDetailsType extends \DTS\eBaySDK\Types\BaseType
{
    /**
     * @var array Properties belonging to objects of this class.
     */
    private static $propertyTypes = [
        'GalleryType' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GalleryType'
        ],
        'GalleryURL' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GalleryURL'
        ],
        'PhotoDisplay' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PhotoDisplay'
        ],
        'PictureURL' => [
            'type' => 'string',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'PictureURL'
        ],
        'PictureSource' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'PictureSource'
        ],
        'GalleryDuration' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GalleryDuration'
        ],
        'GalleryStatus' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GalleryStatus'
        ],
        'GalleryErrorInfo' => [
            'type' => 'string',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'GalleryErrorInfo'
        ],
        'ExternalPictureURL' => [
            'type' => 'string',
            'repeatable' => true,
            'attribute' => false,
            'elementName' => 'ExternalPictureURL'
        ],
        'ExtendedPictureDetails' => [
            'type' => 'DTS\eBaySDK\MerchantData\Types\ExtendedPictureDetailsType',
            'repeatable' => false,
            'attribute' => false,
            'elementName' => 'ExtendedPictureDetails'
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
