.class public Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
.super Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;
.source "CampaignEx.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;,
        Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;,
        Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;
    }
.end annotation


# static fields
.field public static final CAMPAIN_NV_T2_VALUE_3:I = 0x3

.field public static final CAMPAIN_NV_T2_VALUE_4:I = 0x4

.field public static final CLICKMODE_ON:Ljava/lang/String; = "5"

.field public static final CLICK_TIMEOUT_INTERVAL_DEFAULT_VALUE:I = 0x2

.field public static final C_UA_DEFAULT_VALUE:I = 0x1

.field private static final DEFAULT_READY_RATE:I = 0x64

.field public static final ENDCARD_URL:Ljava/lang/String; = "endcard_url"

.field public static final FLAG_DEFAULT_SPARE_OFFER:I = -0x1

.field public static final FLAG_IS_SPARE_OFFER:I = 0x1

.field public static final FLAG_NOT_SPARE_OFFER:I = 0x0

.field public static final IMP_UA_DEFAULT_VALUE:I = 0x1

.field public static final JSON_AD_IMP_KEY:Ljava/lang/String; = "sec"

.field public static final JSON_AD_IMP_VALUE:Ljava/lang/String; = "url"

.field public static final JSON_KEY_ADVIMP:Ljava/lang/String; = "adv_imp"

.field public static final JSON_KEY_AD_AKS:Ljava/lang/String; = "aks"

.field public static final JSON_KEY_AD_AL:Ljava/lang/String; = "al"

.field public static final JSON_KEY_AD_HTML:Ljava/lang/String; = "ad_html"

.field public static final JSON_KEY_AD_K:Ljava/lang/String; = "k"

.field public static final JSON_KEY_AD_MP:Ljava/lang/String; = "mp"

.field public static final JSON_KEY_AD_Q:Ljava/lang/String; = "q"

.field public static final JSON_KEY_AD_R:Ljava/lang/String; = "r"

.field public static final JSON_KEY_AD_SOURCE_ID:Ljava/lang/String; = "ad_source_id"

.field public static final JSON_KEY_AD_TMP_IDS:Ljava/lang/String; = "tmp_ids"

.field public static final JSON_KEY_AD_TRACKING_DROPOUT_TRACK:Ljava/lang/String; = "dropout_track"

.field public static final JSON_KEY_AD_TRACKING_IMPRESSION_T2:Ljava/lang/String; = "impression_t2"

.field public static final JSON_KEY_AD_TRACKING_PLYCMPT_TRACK:Ljava/lang/String; = "plycmpt_track"

.field public static final JSON_KEY_AD_URL_LIST:Ljava/lang/String; = "ad_url_list"

.field public static final JSON_KEY_AD_ZIP:Ljava/lang/String; = "ad_tpl_url"

.field public static final JSON_KEY_APP_SIZE:Ljava/lang/String; = "app_size"

.field public static final JSON_KEY_BANNER_HTML:Ljava/lang/String; = "banner_html"

.field public static final JSON_KEY_BANNER_URL:Ljava/lang/String; = "banner_url"

.field public static final JSON_KEY_BTY:Ljava/lang/String; = "ctype"

.field public static final JSON_KEY_CAMPAIGN_UNITID:Ljava/lang/String; = "unitId"

.field public static final JSON_KEY_CLICK_INTERVAL:Ljava/lang/String; = "c_ct"

.field public static final JSON_KEY_CLICK_MODE:Ljava/lang/String; = "click_mode"

.field public static final JSON_KEY_CLICK_TIMEOUT_INTERVAL:Ljava/lang/String; = "c_toi"

.field public static final JSON_KEY_CLICK_URL:Ljava/lang/String; = "click_url"

.field public static final JSON_KEY_CREATIVE_ID:Ljava/lang/String; = "creative_id"

.field public static final JSON_KEY_CTA_TEXT:Ljava/lang/String; = "ctatext"

.field public static final JSON_KEY_C_UA:Ljava/lang/String; = "c_ua"

.field public static final JSON_KEY_DEEP_LINK_URL:Ljava/lang/String; = "deep_link"

.field public static final JSON_KEY_DESC:Ljava/lang/String; = "desc"

.field public static final JSON_KEY_ENDCARD_CLICK:Ljava/lang/String; = "endcard_click_result"

.field public static final JSON_KEY_EXT_DATA:Ljava/lang/String; = "ext_data"

.field public static final JSON_KEY_FCA:Ljava/lang/String; = "fca"

.field public static final JSON_KEY_FCB:Ljava/lang/String; = "fcb"

.field public static final JSON_KEY_FLB:Ljava/lang/String; = "flb"

.field public static final JSON_KEY_FLB_SKIP_TIME:Ljava/lang/String; = "flb_skiptime"

.field public static final JSON_KEY_GIF_URL:Ljava/lang/String; = "gif_url"

.field public static final JSON_KEY_GUIDELINES:Ljava/lang/String; = "guidelines"

.field public static final JSON_KEY_HASMBTPLMARK:Ljava/lang/String; = "hasMBTplMark"

.field public static final JSON_KEY_HB:Ljava/lang/String; = "hb"

.field public static final JSON_KEY_ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final JSON_KEY_ID:Ljava/lang/String; = "id"

.field public static final JSON_KEY_IMAGE_SIZE:Ljava/lang/String; = "image_size"

.field public static final JSON_KEY_IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final JSON_KEY_IMPRESSION_URL:Ljava/lang/String; = "impression_url"

.field public static final JSON_KEY_IMP_UA:Ljava/lang/String; = "imp_ua"

.field public static final JSON_KEY_JM_PD:Ljava/lang/String; = "jm_pd"

.field public static final JSON_KEY_LANDING_TYPE:Ljava/lang/String; = "landing_type"

.field public static final JSON_KEY_LINK_TYPE:Ljava/lang/String; = "link_type"

.field public static final JSON_KEY_MAITVE:Ljava/lang/String; = "maitve"

.field public static final JSON_KEY_MAITVESRC:Ljava/lang/String; = "maitve_src"

.field public static final JSON_KEY_MRAID:Ljava/lang/String; = "mraid"

.field public static final JSON_KEY_MRAIDFORH5:Ljava/lang/String; = "mraid_src"

.field public static final JSON_KEY_NOTICE_URL:Ljava/lang/String; = "notice_url"

.field public static final JSON_KEY_NUMBER_RATING:Ljava/lang/String; = "number_rating"

.field public static final JSON_KEY_NV_T2:Ljava/lang/String; = "nv_t2"

.field public static final JSON_KEY_OFFER_TYPE:Ljava/lang/String; = "offer_type"

.field public static final JSON_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final JSON_KEY_PLCT:Ljava/lang/String; = "plct"

.field public static final JSON_KEY_PLCTB:Ljava/lang/String; = "plctb"

.field public static final JSON_KEY_PV_URLS:Ljava/lang/String; = "pv_urls"

.field public static final JSON_KEY_READY_RATE:Ljava/lang/String; = "ready_rate"

.field public static final JSON_KEY_RETARGET_OFFER:Ljava/lang/String; = "retarget_offer"

.field public static final JSON_KEY_RETARGET_TYPE:Ljava/lang/String; = "rtins_type"

.field public static final JSON_KEY_REWARD_AMOUNT:Ljava/lang/String; = "reward_amount"

.field public static final JSON_KEY_REWARD_NAME:Ljava/lang/String; = "reward_name"

.field public static final JSON_KEY_REWARD_PLUS:Ljava/lang/String; = "rw_pl"

.field public static final JSON_KEY_REWARD_TEMPLATE:Ljava/lang/String; = "rv"

.field public static final JSON_KEY_REWARD_VIDEO_MD5:Ljava/lang/String; = "md5_file"

.field public static final JSON_KEY_STAR:Ljava/lang/String; = "rating"

.field public static final JSON_KEY_ST_IEX:Ljava/lang/String; = "iex"

.field public static final JSON_KEY_ST_TS:Ljava/lang/String; = "ts"

.field public static final JSON_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JSON_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final JSON_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final JSON_KEY_T_IMP:Ljava/lang/String; = "t_imp"

.field public static final JSON_KEY_USER_ACTIVATION:Ljava/lang/String; = "user_activation"

.field public static final JSON_KEY_VCN:Ljava/lang/String; = "vcn"

.field public static final JSON_KEY_VIDEO_LENGTHL:Ljava/lang/String; = "video_length"

.field public static final JSON_KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field public static final JSON_KEY_VIDEO_SIZE:Ljava/lang/String; = "video_size"

.field public static final JSON_KEY_VIDEO_URL:Ljava/lang/String; = "video_url"

.field public static final JSON_KEY_WATCH_MILE:Ljava/lang/String; = "watch_mile"

.field public static final JSON_KEY_WITHOUT_INSTALL_CHECK:Ljava/lang/String; = "wtick"

.field public static final JSON_NATIVE_VIDEO_AD_TRACKING:Ljava/lang/String; = "ad_tracking"

.field public static final JSON_NATIVE_VIDEO_CLICK:Ljava/lang/String; = "click"

.field public static final JSON_NATIVE_VIDEO_CLOSE:Ljava/lang/String; = "close"

.field public static final JSON_NATIVE_VIDEO_COMPLETE:Ljava/lang/String; = "complete"

.field public static final JSON_NATIVE_VIDEO_ENDCARD:Ljava/lang/String; = "endcard"

.field public static final JSON_NATIVE_VIDEO_ENDCARD_SHOW:Ljava/lang/String; = "endcard_show"

.field public static final JSON_NATIVE_VIDEO_ERROR:Ljava/lang/String; = "error"

.field public static final JSON_NATIVE_VIDEO_FIRST_QUARTILE:Ljava/lang/String; = "first_quartile"

.field public static final JSON_NATIVE_VIDEO_MIDPOINT:Ljava/lang/String; = "midpoint"

.field public static final JSON_NATIVE_VIDEO_MUTE:Ljava/lang/String; = "mute"

.field public static final JSON_NATIVE_VIDEO_PAUSE:Ljava/lang/String; = "pause"

.field public static final JSON_NATIVE_VIDEO_PLAY_PERCENTAGE:Ljava/lang/String; = "play_percentage"

.field public static final JSON_NATIVE_VIDEO_RESUME:Ljava/lang/String; = "resume"

.field public static final JSON_NATIVE_VIDEO_START:Ljava/lang/String; = "start"

.field public static final JSON_NATIVE_VIDEO_THIRD_QUARTILE:Ljava/lang/String; = "third_quartile"

.field public static final JSON_NATIVE_VIDEO_UNMUTE:Ljava/lang/String; = "unmute"

.field public static final JSON_NATIVE_VIDEO_VIDEO_CLICK:Ljava/lang/String; = "video_click"

.field public static final JSON_NATIVE_VIDOE_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final KEY_ADCHOICE:Ljava/lang/String; = "adchoice"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final KEY_IA_CACHE:Ljava/lang/String; = "ia_cache"

.field public static final KEY_IA_EXT1:Ljava/lang/String; = "ia_ext1"

.field public static final KEY_IA_EXT2:Ljava/lang/String; = "ia_ext2"

.field public static final KEY_IA_ICON:Ljava/lang/String; = "ia_icon"

.field public static final KEY_IA_ORI:Ljava/lang/String; = "ia_ori"

.field public static final KEY_IA_RST:Ljava/lang/String; = "ia_rst"

.field public static final KEY_IA_URL:Ljava/lang/String; = "ia_url"

.field public static final KEY_IS_DOWNLOAD:Ljava/lang/String; = "is_download_zip"

.field public static final KEY_OC_TIME:Ljava/lang/String; = "oc_time"

.field public static final KEY_OC_TYPE:Ljava/lang/String; = "oc_type"

.field public static final KEY_OMID:Ljava/lang/String; = "omid"

.field public static final KEY_T_LIST:Ljava/lang/String; = "t_list"

.field public static final LANDING_TYPE_VALUE_OPEN_BROWSER:I = 0x1

.field public static final LANDING_TYPE_VALUE_OPEN_GP_BY_PACKAGE:I = 0x3

.field public static final LANDING_TYPE_VALUE_OPEN_WEBVIEW:I = 0x2

.field public static final LINK_TYPE_1:I = 0x1

.field public static final LINK_TYPE_2:I = 0x2

.field public static final LINK_TYPE_3:I = 0x3

.field public static final LINK_TYPE_4:I = 0x4

.field public static final LINK_TYPE_8:I = 0x8

.field public static final LINK_TYPE_9:I = 0x9

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO:Ljava/lang/String; = "playable_ads_without_video"

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO_DEFAULT:I = 0x1

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO_ENDCARD:I = 0x2

.field public static final RETAR_GETING_IS:I = 0x1

.field public static final RETAR_GETING_NOT:I = 0x2

.field public static final RTINS_TYPE_DONE:I = 0x1

.field public static final RTINS_TYPE_NOT_DONE:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field public static final VIDEO_END_TYPE:Ljava/lang/String; = "video_end_type"

.field public static final VIDEO_END_TYPE_BROWSER:I = 0x5

.field public static final VIDEO_END_TYPE_DEFAULT:I = 0x2

.field public static final VIDEO_END_TYPE_FINISH:I = 0x1

.field public static final VIDEO_END_TYPE_NATIVE:I = 0x64

.field public static final VIDEO_END_TYPE_REULSE:I = 0x2

.field public static final VIDEO_END_TYPE_VAST:I = 0x3

.field public static final VIDEO_END_TYPE_WEBVIEW:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adHtml:Ljava/lang/String;

.field private adType:I

.field private adZip:Ljava/lang/String;

.field private ad_url_list:Ljava/lang/String;

.field private adchoice:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

.field private advImp:Ljava/lang/String;

.field private aks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/lang/String;

.field private bannerHtml:Ljava/lang/String;

.field private bannerUrl:Ljava/lang/String;

.field private bidToken:Ljava/lang/String;

.field private bty:I

.field private cUA:I

.field private cVersionCode:J

.field private cacheLevel:I

.field private campaignUnitId:Ljava/lang/String;

.field private cbt:I

.field private clickInterval:I

.field private clickTimeOutInterval:I

.field private clickURL:Ljava/lang/String;

.field private click_mode:Ljava/lang/String;

.field private creativeId:J

.field private deepLinkUrl:Ljava/lang/String;

.field private endScreenUrl:Ljava/lang/String;

.field private endcard_click_result:I

.field private endcard_url:Ljava/lang/String;

.field private ext_data:Ljava/lang/String;

.field private fca:I

.field private fcb:I

.field private flb:I

.field private flbSkipTime:I

.field private gifUrl:Ljava/lang/String;

.field private guidelines:Ljava/lang/String;

.field private hasMBTplMark:Z

.field private hasReportAdTrackPause:Z

.field private htmlUrl:Ljava/lang/String;

.field private ia_ext1:Ljava/lang/String;

.field private ia_ext2:Ljava/lang/String;

.field private iex:I

.field private imageSize:Ljava/lang/String;

.field private impUA:I

.field private impressionURL:Ljava/lang/String;

.field private interactiveCache:Ljava/lang/String;

.field private isAddSuccesful:I

.field private isBidCampaign:Z

.field private isCallBackImpression:Z

.field private isCallbacked:Z

.field private isClick:I

.field private isDeleted:I

.field private isDownLoadZip:I

.field private isMraid:Z

.field private isReady:Z

.field private isReport:Z

.field private isReportClick:Z

.field private jmPd:I

.field private jumpResult:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private k:Ljava/lang/String;

.field private keyIaIcon:Ljava/lang/String;

.field private keyIaOri:I

.field private keyIaRst:I

.field private keyIaUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private landingType:Ljava/lang/String;

.field private linkType:I

.field private loadTimeoutState:I

.field private maitve:I

.field private maitve_src:Ljava/lang/String;

.field private mediaViewHolder:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

.field private mof_template_url:Ljava/lang/String;

.field private mof_tplid:I

.field private mp:Ljava/lang/String;

.field private mraid:Ljava/lang/String;

.field private nativeVideoTracking:Lccsancom/mbridge/msdk/foundation/entity/i;

.field private nativeVideoTrackingString:Ljava/lang/String;

.field private noticeUrl:Ljava/lang/String;

.field private nscpt:I

.field private nvT2:I

.field private oc_time:I

.field private oc_type:I

.field private offerType:I

.field private omid:Ljava/lang/String;

.field private onlyImpressionURL:Ljava/lang/String;

.field private pkgSource:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field private playable_ads_without_video:I

.field private plct:J

.field private plctb:J

.field private pv_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private readyState:I

.field private ready_rate:I

.field private req_ext_data:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private requestIdNotice:Ljava/lang/String;

.field private retarget_offer:I

.field private rewardAmount:I

.field private rewardPlayStatus:I

.field public rewardPlus:Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

.field private rewardTemplateMode:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

.field private reward_name:Ljava/lang/String;

.field private rtinsType:I

.field private spareOfferFlag:I

.field private t_imp:I

.field private t_list:Ljava/lang/String;

.field private tab:I

.field private template:I

.field private ts:J

.field private userActivation:Z

.field private vcn:I

.field public videoMD5Value:Ljava/lang/String;

.field private videoResolution:Ljava/lang/String;

.field private videoSize:I

.field private videoUrlEncode:Ljava/lang/String;

.field private video_end_type:I

.field private watchMile:I

.field private wtick:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 29
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->readyState:I

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adZip:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adHtml:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReady:Z

    .line 89
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plct:J

    .line 90
    iput-wide v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plctb:J

    .line 92
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    .line 94
    iput-wide v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->creativeId:J

    .line 97
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->vcn:I

    .line 117
    const/4 v3, -0x1

    iput v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->spareOfferFlag:I

    .line 280
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->oc_type:I

    .line 436
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impUA:I

    .line 437
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cUA:I

    .line 464
    const/4 v4, 0x6

    iput v4, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nvT2:I

    .line 488
    iput v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->tab:I

    .line 490
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    .line 491
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickURL:Ljava/lang/String;

    .line 495
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->wtick:I

    .line 497
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    .line 498
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->userActivation:Z

    .line 499
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    .line 501
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->imageSize:Ljava/lang/String;

    .line 525
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallBackImpression:Z

    .line 530
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    .line 583
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bidToken:Ljava/lang/String;

    .line 592
    const/4 v4, 0x2

    iput v4, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->video_end_type:I

    .line 603
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    .line 606
    iput v3, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ready_rate:I

    .line 616
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nscpt:I

    .line 624
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->loadTimeoutState:I

    .line 723
    iput v4, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickTimeOutInterval:I

    .line 769
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->playable_ads_without_video:I

    .line 2375
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->hasReportAdTrackPause:Z

    .line 2618
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->omid:Ljava/lang/String;

    return-void
.end method

.method public static TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;
    .locals 3

    .line 1807
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1808
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1809
    new-instance p0, Lccsancom/mbridge/msdk/foundation/entity/i;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;-><init>()V

    .line 1810
    const-string v2, "impression"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1811
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->o([Ljava/lang/String;)V

    .line 1813
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1814
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->d([Ljava/lang/String;)V

    .line 1816
    const-string v2, "first_quartile"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1817
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->e([Ljava/lang/String;)V

    .line 1819
    const-string v2, "midpoint"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1820
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->f([Ljava/lang/String;)V

    .line 1822
    const-string v2, "third_quartile"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1823
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->g([Ljava/lang/String;)V

    .line 1825
    const-string v2, "complete"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1826
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->h([Ljava/lang/String;)V

    .line 1828
    const-string v2, "play_percentage"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1829
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parsePlayCentage(Lccsanorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->a(Ljava/util/List;)V

    .line 1831
    const-string v2, "mute"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1832
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->i([Ljava/lang/String;)V

    .line 1834
    const-string v2, "unmute"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1835
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->j([Ljava/lang/String;)V

    .line 1837
    const-string v2, "click"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1838
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->k([Ljava/lang/String;)V

    .line 1840
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1841
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->l([Ljava/lang/String;)V

    .line 1843
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1844
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->m([Ljava/lang/String;)V

    .line 1846
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1847
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->n([Ljava/lang/String;)V

    .line 1849
    const-string v2, "endcard"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1850
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->p([Ljava/lang/String;)V

    .line 1852
    const-string v2, "close"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1853
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->r([Ljava/lang/String;)V

    .line 1855
    const-string v2, "endcard_show"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1856
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->q([Ljava/lang/String;)V

    .line 1858
    const-string v2, "video_click"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1859
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->s([Ljava/lang/String;)V

    .line 1861
    const-string v2, "impression_t2"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1862
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->c([Ljava/lang/String;)V

    .line 1864
    const-string v2, "dropout_track"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1865
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->a([Ljava/lang/String;)V

    .line 1867
    const-string v2, "plycmpt_track"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 1868
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/i;->b([Ljava/lang/String;)V

    .line 1869
    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->trackingStr2Object(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/i;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    return-object p0

    .line 1874
    :cond_0
    nop

    .line 1875
    return-object v0

    .line 1872
    :catch_0
    move-exception p0

    .line 1873
    return-object v0
.end method

.method public static campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1960
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1961
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1962
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlb()I

    move-result v1

    const-string v2, "flb"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1963
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result v1

    const-string v2, "flb_skiptime"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1964
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1965
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unitId"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1968
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1970
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1971
    const-string v2, "ext_data"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    goto :goto_0

    .line 1972
    :catch_0
    move-exception v1

    .line 1973
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 1976
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1978
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1979
    const-string v2, "req_ext_data"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1982
    goto :goto_1

    .line 1980
    :catch_1
    move-exception v1

    .line 1981
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 1985
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1987
    :try_start_2
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 1988
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1989
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 1990
    goto :goto_2

    .line 1991
    :cond_3
    const-string v2, "pv_urls"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1994
    goto :goto_3

    .line 1992
    :catch_2
    move-exception v1

    .line 1993
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 1998
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1999
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v1

    const-string v2, "mof_tplid"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2000
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mof_template_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2001
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v1

    const-string v2, "nscpt"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2003
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    const-string v2, "ready_rate"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2004
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2005
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2006
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2007
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRtinsType()I

    move-result v1

    const-string v2, "rtins_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2008
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2009
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2010
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_size"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2011
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_size"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2012
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "impression_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2013
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2014
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2015
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->toJsonObject()Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rw_pl"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2017
    :cond_6
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v1

    const-string v2, "wtick"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2018
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deep_link"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2019
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getUserActivation()Z

    move-result v1

    const-string v2, "user_activation"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 2020
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2021
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v1

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2022
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v1

    const-string v2, "ad_source_id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2023
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v1

    const-string v2, "fca"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2024
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v1

    const-string v2, "fcb"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2026
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNumberRating()I

    move-result v1

    const-string v2, "number_rating"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2027
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_mode"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2029
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "landing_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2030
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    const-string v2, "link_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2032
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickInterval()I

    move-result v1

    const-string v2, "c_ct"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2033
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctatext"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2034
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    move-result v1

    const-string v2, "endcard_click_result"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2036
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRetarget_offer()I

    move-result v1

    const-string v2, "retarget_offer"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2038
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2039
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v1

    const-string v2, "video_length"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2040
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result v1

    const-string v2, "video_size"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2041
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_resolution"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2043
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWatchMile()I

    move-result v1

    const-string v2, "watch_mile"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2044
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_url_list"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2045
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "only_impression_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2046
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBty()I

    move-result v1

    const-string v2, "ctype"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2047
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTImp()I

    move-result v1

    const-string v2, "t_imp"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2048
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adv_imp"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2050
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2051
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_screen_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2052
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guidelines"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2053
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v1

    const-string v2, "offer_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2054
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardAmount()I

    move-result v1

    const-string v2, "reward_amount"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2055
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reward_name"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2056
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2058
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2059
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_tracking"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2061
    :cond_7
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    const-string v2, "video_end_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2062
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endcard_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2063
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const-string v2, "playable_ads_without_video"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2064
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2065
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rv"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2067
    :cond_8
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5_file"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2068
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v1

    const-string v2, "c_toi"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2069
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getcUA()I

    move-result v1

    const-string v2, "c_ua"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2070
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpUA()I

    move-result v1

    const-string v2, "imp_ua"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2071
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJmPd()I

    move-result v1

    const-string v2, "jm_pd"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2073
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia_icon"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2074
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result v1

    const-string v2, "ia_rst"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2075
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2076
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaOri()I

    move-result v1

    const-string v2, "ia_ori"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2077
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2078
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia_ext1"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2079
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia_ext2"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2080
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v1

    const-string v2, "is_download_zip"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2081
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia_cache"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2083
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_type()I

    move-result v1

    const-string v2, "oc_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2084
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_time()I

    move-result v1

    const-string v2, "oc_time"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2085
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t_list"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2087
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v1

    .line 2088
    if-eqz v1, :cond_9

    .line 2089
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "adchoice"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2091
    :cond_9
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v1

    const-string v3, "plct"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 2092
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v1

    const-string v3, "plctb"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 2094
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "omid"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2096
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v1

    const-string v3, "creative_id"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 2097
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cam_html"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2098
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v2, "cam_tpl_url"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2100
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2101
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid_src"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2103
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 2105
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign:Z

    const-string v2, "hb"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 2107
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2109
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v1

    const-string v2, "maitve"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2110
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maitve_src"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2112
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVcn()I

    move-result v1

    const-string v2, "vcn"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2115
    :try_start_3
    const-string v1, "misk_spt"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2116
    const-string v1, "misk_spt_det"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2119
    goto :goto_5

    .line 2117
    :catch_3
    move-exception v1

    .line 2120
    :goto_5
    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)Lccsanorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1953
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object p0

    .line 1954
    const-string v0, "isReady"

    invoke-virtual {p0, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1955
    const-string p1, "expired"

    invoke-virtual {p0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1956
    return-object p0
.end method

.method private static dealV5Temp(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 6

    .line 1544
    const-string v0, "tmp_ids"

    :try_start_0
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1545
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 1546
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1547
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1548
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1549
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1550
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a()Lccsancom/mbridge/msdk/foundation/db/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 1551
    if-eqz v2, :cond_0

    .line 1552
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1553
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1554
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1555
    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    goto :goto_1

    .line 1548
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1564
    :cond_1
    goto :goto_2

    .line 1562
    :catch_0
    move-exception p0

    .line 1563
    const/4 p0, 0x0

    .line 1565
    :goto_2
    return-object p0
.end method

.method private generateAdImpression(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1890
    nop

    .line 1891
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1893
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1895
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1896
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1897
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 1898
    const-string v3, "sec"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1899
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1900
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_1

    .line 1903
    :catch_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    .line 1905
    :cond_1
    :goto_1
    goto :goto_3

    .line 1903
    :catch_1
    move-exception v0

    .line 1904
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1908
    :cond_2
    :goto_3
    return-object v1
.end method

.method private static isBreakCampainOrSetItByEndCard(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z
    .locals 3

    .line 1305
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1306
    return v1

    .line 1309
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->i()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1310
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 1311
    const-string v2, "dpwgl"

    invoke-virtual {v0, v2}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1312
    if-eqz v0, :cond_1

    .line 1313
    const/4 p0, 0x1

    return p0

    .line 1316
    :cond_1
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1318
    return v1
.end method

.method public static parseCampaign(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 7

    .line 1569
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaign(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    return-object p0
.end method

.method public static parseCampaign(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 17

    .line 1573
    move-object/from16 v1, p5

    const-string v2, "cam_html"

    const-string v3, "gif_url"

    const-string v4, "nv_t2"

    const-string v5, "md5_file"

    const-string v6, "ad_tracking"

    const-string v7, "number_rating"

    const-string v8, "rating"

    const-string v9, ""

    const-string v10, "omid"

    .line 1574
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->dealV5Temp(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v11

    .line 1575
    if-eqz v11, :cond_16

    .line 1577
    :try_start_0
    new-instance v13, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1578
    :try_start_1
    const-string v0, "aks"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1580
    new-instance v14, Lccsanorg/json/JSONObject;

    invoke-direct {v14, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v14}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1582
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1583
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1584
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    .line 1585
    move-object/from16 v16, v0

    invoke-virtual {v14, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    invoke-virtual {v15, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    move-object/from16 v0, v16

    goto :goto_0

    .line 1588
    :cond_0
    invoke-virtual {v13, v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAks(Ljava/util/HashMap;)V

    .line 1592
    :cond_1
    invoke-static/range {p6 .. p6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_2

    .line 1593
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v13, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1598
    :cond_2
    :try_start_2
    const-string v0, "ready_rate"

    const/4 v15, -0x1

    invoke-virtual {v11, v0, v15}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady_rate(I)V

    .line 1599
    const-string v0, "ext_data"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1601
    if-eqz v0, :cond_3

    .line 1602
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setExt_data(Ljava/lang/String;)V

    .line 1605
    :cond_3
    const-string v0, "mof_tplid"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 1606
    const-string v0, "mof_template_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 1607
    const-string v0, "nscpt"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 1608
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 1609
    const-string v0, "pv_urls"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 1610
    nop

    .line 1611
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 1612
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v12

    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1613
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_5

    .line 1614
    invoke-virtual {v0, v12}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1617
    :cond_4
    const/4 v15, 0x0

    :cond_5
    invoke-virtual {v13, v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 1618
    const-string v0, "req_ext_data"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1619
    if-eqz v0, :cond_6

    .line 1620
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1623
    :cond_6
    goto :goto_2

    .line 1622
    :catch_0
    move-exception v0

    .line 1625
    :goto_2
    :try_start_3
    const-string v0, "id"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1626
    const-string v0, "title"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1627
    const-string v0, "unitId"

    invoke-virtual {v11, v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1628
    const-string v0, "desc"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1629
    const-string v0, "package_name"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1630
    const-string v0, "rtins_type"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 1631
    const-string v0, "icon_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1632
    const-string v0, "image_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1633
    const-string v0, "app_size"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1634
    const-string v0, "image_size"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1635
    const-string v0, "impression_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1636
    const-string v0, "click_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1637
    const-string v0, "rw_pl"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->parseByString(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardPlus(Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;)V

    .line 1638
    const-string v0, "wtick"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWtick(I)V

    .line 1639
    const-string v0, "deep_link"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1640
    const-string v0, "user_activation"

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setUserActivation(Z)V

    .line 1641
    const-string v0, "notice_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1642
    const-string v0, "template"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplate(I)V

    .line 1643
    const-string v0, "ad_source_id"

    const/4 v12, 0x1

    invoke-virtual {v11, v0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setType(I)V

    .line 1644
    const-string v0, "fca"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFca(I)V

    .line 1645
    const-string v0, "fcb"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFcb(I)V

    .line 1646
    const-string v0, "endcard_click_result"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1647
    invoke-virtual {v11, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1648
    const-string v0, "0"

    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRating(D)V

    .line 1650
    :cond_7
    invoke-virtual {v11, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1651
    const v0, 0x51615

    invoke-virtual {v11, v7, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNumberRating(I)V

    .line 1653
    :cond_8
    const-string v0, "click_mode"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1655
    const-string v0, "landing_type"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1656
    const-string v0, "link_type"

    const/4 v7, 0x4

    invoke-virtual {v11, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLinkType(I)V

    .line 1658
    const-string v0, "c_ct"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickInterval(I)V

    .line 1659
    const-string v0, "ctatext"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1660
    const-string v0, "ad_url_list"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1661
    const-string v0, "retarget_offer"

    const/4 v7, 0x2

    invoke-virtual {v11, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1663
    const-string v0, "video_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1665
    if-eqz p4, :cond_9

    .line 1666
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    goto :goto_3

    .line 1668
    :cond_9
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1673
    :cond_a
    :goto_3
    const-string v0, "video_length"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoLength(I)V

    .line 1674
    const-string v0, "video_size"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoSize(I)V

    .line 1675
    const-string v0, "video_resolution"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1676
    const-string v0, "watch_mile"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWatchMile(I)V

    .line 1678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTimestamp(J)V

    .line 1679
    move-object/from16 v8, p1

    invoke-static {v1, v13, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1681
    const-string v0, "ctype"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBty(I)V

    .line 1682
    const-string v0, "adv_imp"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1683
    const-string v0, "t_imp"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTImp(I)V

    .line 1685
    move-object/from16 v8, p2

    invoke-virtual {v13, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v8, p3

    invoke-virtual {v13, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1687
    const-string v0, "guidelines"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1688
    const-string v0, "offer_type"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOfferType(I)V

    .line 1689
    const-string v0, "reward_name"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1690
    const-string v0, "reward_amount"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardAmount(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1693
    :try_start_4
    invoke-virtual {v11, v6}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1694
    invoke-virtual {v11, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1696
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1697
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1698
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1702
    :cond_b
    goto :goto_4

    .line 1701
    :catch_1
    move-exception v0

    .line 1704
    :goto_4
    :try_start_5
    const-string v0, "video_end_type"

    invoke-virtual {v11, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1705
    const-string v0, "endcard_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBreakCampainOrSetItByEndCard(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1706
    const/4 v1, 0x0

    return-object v1

    .line 1708
    :cond_c
    const-string v0, "playable_ads_without_video"

    const/4 v6, 0x1

    invoke-virtual {v11, v0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1710
    invoke-virtual {v11, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1711
    invoke-virtual {v11, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1713
    :cond_d
    invoke-virtual {v11, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1714
    invoke-virtual {v11, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNvT2(I)V

    .line 1716
    :cond_e
    invoke-virtual {v11, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1717
    invoke-virtual {v11, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1719
    :cond_f
    const-string v0, "rv"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V

    .line 1720
    const-string v0, "c_toi"

    invoke-virtual {v11, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1721
    const-string v0, "imp_ua"

    const/4 v3, 0x1

    invoke-virtual {v11, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpUA(I)V

    .line 1722
    const-string v0, "c_ua"

    invoke-virtual {v11, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setcUA(I)V

    .line 1723
    const-string v0, "jm_pd"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJmPd(I)V

    .line 1725
    const-string v0, "ia_icon"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1726
    const-string v0, "ia_rst"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1727
    const-string v0, "ia_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1728
    const-string v0, "ia_ori"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1729
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAdType()I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 1730
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getVcn()I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVcn(I)V

    .line 1731
    const-string v0, "ia_ext1"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1732
    const-string v0, "ia_ext2"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1733
    const-string v0, "is_download_zip"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1734
    const-string v0, "ia_cache"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1736
    const-string v0, "oc_time"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_time(I)V

    .line 1737
    const-string v0, "oc_type"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_type(I)V

    .line 1738
    const-string v0, "t_list"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1740
    const-string v0, "adchoice"

    invoke-virtual {v11, v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V

    .line 1742
    const-string v0, "plct"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 1743
    const-string v0, "plctb"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 1744
    const-string v0, "creative_id"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 1746
    const-string v0, "cam_tpl_url"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 1748
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ZIP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1749
    :cond_10
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    goto :goto_5

    .line 1751
    :cond_11
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1753
    :goto_5
    invoke-virtual {v11, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v11, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 1756
    const-string v0, "mraid"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1758
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 1759
    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    goto :goto_6

    .line 1761
    :cond_12
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<MBTPLMARK>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1762
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    goto :goto_6

    .line 1764
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 1768
    :goto_6
    invoke-virtual {v11, v10}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 1769
    if-nez v0, :cond_15

    .line 1770
    invoke-virtual {v11, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1771
    invoke-virtual {v11, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    goto :goto_7

    .line 1773
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    goto :goto_7

    .line 1776
    :cond_15
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1779
    :goto_7
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    .line 1781
    const-string v0, "maitve"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve(I)V

    .line 1782
    const-string v0, "maitve_src"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve_src(Ljava/lang/String;)V

    .line 1783
    const-string v0, "flb"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlb(I)V

    .line 1784
    const-string v0, "flb_skiptime"

    invoke-virtual {v11, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlbSkipTime(I)V

    .line 1785
    invoke-static {v11, v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaign(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1789
    :try_start_6
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1790
    invoke-virtual {v12, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1794
    goto :goto_8

    .line 1792
    :catch_2
    move-exception v0

    .line 1793
    :try_start_7
    const-string v1, "campaign"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1798
    :goto_8
    nop

    .line 1799
    return-object v12

    .line 1795
    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v12, v13

    goto :goto_9

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    .line 1796
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1797
    return-object v12

    .line 1801
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 15

    .line 1323
    move-object v1, p0

    const-string v2, "cam_html"

    const-string v3, "gif_url"

    const-string v4, "nv_t2"

    const-string v5, "md5_file"

    const-string v0, "ad_tracking"

    const-string v6, "number_rating"

    const-string v7, "rating"

    const-string v8, "notice_url"

    const-string v9, "omid"

    .line 1324
    const/4 v10, 0x0

    if-eqz v1, :cond_14

    .line 1326
    :try_start_0
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1327
    :try_start_1
    const-string v12, "id"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1328
    const-string v12, "title"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1329
    const-string v12, "desc"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1330
    const-string v12, "package_name"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1331
    const-string v12, "rtins_type"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 1332
    const-string v12, "icon_url"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1333
    const-string v12, "image_url"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1334
    const-string v12, "app_size"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1335
    const-string v12, "image_size"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1336
    const-string v12, "impression_url"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1337
    const-string v12, "click_url"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1338
    const-string v12, "rw_pl"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;->parseByString(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardPlus(Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;)V

    .line 1339
    const-string v12, "wtick"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWtick(I)V

    .line 1340
    const-string v12, "deep_link"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1341
    const-string v12, "user_activation"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setUserActivation(Z)V

    .line 1342
    invoke-virtual {p0, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1343
    const-string v12, "template"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplate(I)V

    .line 1344
    const-string v12, "ad_source_id"

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setType(I)V

    .line 1345
    const-string v12, "fca"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFca(I)V

    .line 1346
    const-string v12, "fcb"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFcb(I)V

    .line 1347
    const-string v12, "endcard_click_result"

    invoke-virtual {p0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1348
    invoke-virtual {p0, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1349
    const-string v12, "0"

    invoke-virtual {p0, v7, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRating(D)V

    .line 1351
    :cond_0
    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1352
    const v7, 0x51615

    invoke-virtual {p0, v6, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNumberRating(I)V

    .line 1354
    :cond_1
    const-string v6, "click_mode"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1356
    const-string v6, "landing_type"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1357
    const-string v6, "link_type"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLinkType(I)V

    .line 1358
    const-string v6, "c_ct"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickInterval(I)V

    .line 1359
    const-string v6, "ctatext"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1360
    const-string v6, "ad_url_list"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1361
    const-string v6, "retarget_offer"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1363
    const-string v6, "video_url"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1364
    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1365
    const-string v6, "video_length"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoLength(I)V

    .line 1366
    const-string v6, "video_size"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoSize(I)V

    .line 1367
    const-string v6, "video_resolution"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1368
    const-string v6, "watch_mile"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWatchMile(I)V

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTimestamp(J)V

    .line 1372
    const-string v6, "ctype"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBty(I)V

    .line 1373
    const-string v6, "adv_imp"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1374
    const-string v6, "t_imp"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTImp(I)V

    .line 1376
    const-string v6, "html_url"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1377
    const-string v6, "end_screen_url"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1378
    const-string v6, "guidelines"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1379
    const-string v6, "offer_type"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOfferType(I)V

    .line 1380
    const-string v6, "reward_name"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1381
    const-string v6, "reward_amount"

    invoke-virtual {p0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardAmount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1385
    :try_start_2
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1386
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1388
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1389
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1393
    :cond_2
    goto :goto_0

    .line 1392
    :catch_0
    move-exception v0

    .line 1396
    :goto_0
    :try_start_3
    const-string v0, "ready_rate"

    const/4 v6, -0x1

    invoke-virtual {p0, v0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady_rate(I)V

    .line 1397
    const-string v0, "ext_data"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_3

    .line 1400
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setExt_data(Ljava/lang/String;)V

    .line 1403
    :cond_3
    const-string v0, "mof_tplid"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 1404
    const-string v0, "mof_template_url"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 1405
    const-string v0, "nscpt"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 1406
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 1407
    const-string v0, "pv_urls"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 1408
    nop

    .line 1409
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1410
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 1412
    invoke-virtual {v0, v13}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1415
    :cond_4
    move-object v6, v10

    :cond_5
    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 1416
    const-string v0, "req_ext_data"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1417
    if-eqz v0, :cond_6

    .line 1418
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1421
    :cond_6
    goto :goto_2

    .line 1420
    :catch_1
    move-exception v0

    .line 1422
    :goto_2
    :try_start_4
    const-string v0, "video_end_type"

    invoke-virtual {p0, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1424
    const-string v0, "endcard_url"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBreakCampainOrSetItByEndCard(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1425
    return-object v10

    .line 1427
    :cond_7
    const-string v0, "playable_ads_without_video"

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1428
    invoke-virtual {p0, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1429
    invoke-virtual {p0, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1431
    :cond_8
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1432
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNvT2(I)V

    .line 1434
    :cond_9
    invoke-virtual {p0, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1435
    invoke-virtual {p0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1437
    :cond_a
    const-string v0, "rv"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V

    .line 1438
    const-string v0, "c_toi"

    invoke-virtual {p0, v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1439
    const-string v0, "imp_ua"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpUA(I)V

    .line 1440
    const-string v0, "c_ua"

    invoke-virtual {p0, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setcUA(I)V

    .line 1441
    const-string v0, "jm_pd"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJmPd(I)V

    .line 1443
    const-string v0, "ia_icon"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1444
    const-string v0, "ia_rst"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1445
    const-string v0, "ia_url"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1446
    const-string v0, "ia_ori"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1447
    const-string v0, "ad_type"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 1448
    const-string v0, "ia_ext1"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1449
    const-string v0, "ia_ext2"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1450
    const-string v0, "is_download_zip"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1451
    const-string v0, "ia_cache"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1453
    const-string v0, "oc_time"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_time(I)V

    .line 1454
    const-string v0, "oc_type"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_type(I)V

    .line 1455
    const-string v0, "t_list"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1457
    const-string v0, "adchoice"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V

    .line 1459
    const-string v0, "plct"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 1460
    const-string v0, "plctb"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 1461
    invoke-virtual {p0, v9}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 1462
    if-nez v0, :cond_c

    .line 1463
    invoke-virtual {p0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1464
    invoke-virtual {p0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    goto :goto_3

    .line 1466
    :cond_b
    invoke-virtual {v11, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    goto :goto_3

    .line 1469
    :cond_c
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1471
    :goto_3
    const-string v0, "creative_id"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v11, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 1473
    const-string v0, "cam_tpl_url"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    .line 1475
    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ZIP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1476
    :cond_d
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    goto :goto_4

    .line 1478
    :cond_e
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1480
    :goto_4
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 1482
    const-string v0, "unitId"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1484
    const-string v0, "mraid"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1486
    const-string v0, "mraid_src"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    :cond_f
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1489
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 1490
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    goto :goto_5

    .line 1492
    :cond_10
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<MBTPLMARK>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1493
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    goto :goto_5

    .line 1495
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1500
    :goto_5
    :try_start_5
    const-string v0, "only_impression_url"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v3, "k"

    if-nez v2, :cond_12

    .line 1502
    :try_start_6
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1503
    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 1504
    if-eqz v0, :cond_12

    .line 1505
    invoke-virtual {v0, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRequestId(Ljava/lang/String;)V

    .line 1510
    :cond_12
    invoke-virtual {p0, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1512
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1513
    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_13

    .line 1515
    invoke-virtual {v0, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRequestIdNotice(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1520
    :cond_13
    goto :goto_6

    .line 1519
    :catch_2
    move-exception v0

    .line 1522
    :goto_6
    :try_start_7
    const-string v0, "hb"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1523
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1525
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    .line 1526
    const-string v0, "maitve"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve(I)V

    .line 1527
    const-string v0, "maitve_src"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve_src(Ljava/lang/String;)V

    .line 1528
    const-string v0, "flb"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlb(I)V

    .line 1529
    const-string v0, "flb_skiptime"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlbSkipTime(I)V

    .line 1530
    invoke-static {p0, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1534
    nop

    .line 1535
    return-object v0

    .line 1531
    :catch_3
    move-exception v0

    move-object v10, v11

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1532
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1533
    return-object v10

    .line 1537
    :cond_14
    return-object v10
.end method

.method public static parseCamplistToJson(Ljava/util/List;)Lccsanorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lccsanorg/json/JSONArray;"
        }
    .end annotation

    .line 1932
    nop

    .line 1934
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1935
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1936
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1938
    :try_start_2
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 1939
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1942
    goto :goto_1

    .line 1940
    :catchall_0
    move-exception v0

    .line 1941
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1943
    :goto_1
    goto :goto_0

    .line 1944
    :cond_0
    return-object v1

    .line 1946
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1947
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1948
    :cond_1
    nop

    .line 1949
    :goto_3
    return-object v0
.end method

.method private static parsePlayCentage(Lccsanorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    if-eqz p0, :cond_1

    .line 2129
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2130
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2131
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2132
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2133
    nop

    .line 2134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2135
    const-string v4, "rate"

    invoke-virtual {v3, v4}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2136
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2143
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2144
    :cond_1
    nop

    .line 2145
    :goto_1
    return-object v0
.end method

.method public static parseSettingCampaign(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 3

    .line 1279
    nop

    .line 1280
    if-eqz p0, :cond_0

    .line 1281
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V

    .line 1282
    const-string v1, "campaignid"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1283
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1284
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1285
    const-string v1, "cta"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1286
    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1287
    const-string v1, "impression_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1288
    const-string v1, "image_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1290
    const-string v1, "plct"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 1291
    const-string v1, "plctb"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 1293
    const-string v1, "ad_html"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 1294
    const-string v1, "ad_tpl_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    .line 1295
    const-string v1, "banner_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1296
    const-string v1, "banner_html"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1297
    const-string v1, "creative_id"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 1299
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_0
    const/4 v0, 0x0

    .line 1301
    :goto_0
    return-object v0
.end method

.method protected static processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3

    .line 1879
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1880
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1881
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1882
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1884
    :cond_0
    return-object v0

    .line 1886
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAdHtml()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 344
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adType:I

    return v0
.end method

.method public getAdUrlList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1912
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v0

    .line 1913
    nop

    .line 1915
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1916
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1917
    nop

    .line 1918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1919
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1920
    invoke-virtual {v2, v1}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1919
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 1925
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1927
    :cond_1
    :goto_1
    goto :goto_3

    .line 1925
    :catch_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1926
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 1928
    :goto_3
    return-object v1
.end method

.method public getAdZip()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adZip:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_url_list()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ad_url_list:Ljava/lang/String;

    return-object v0
.end method

.method public getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;
    .locals 1

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adchoice:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    return-object v0
.end method

.method public getAdvImp()Ljava/lang/String;
    .locals 1

    .line 994
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->advImp:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvImpList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->advImp:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->generateAdImpression(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->aks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAl()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerHtml()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 1

    .line 692
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBty()I
    .locals 1

    .line 986
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bty:I

    return v0
.end method

.method public getCacheLevel()I
    .locals 1

    .line 1046
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cacheLevel:I

    return v0
.end method

.method public getCampaignUnitId()Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCbt()I
    .locals 1

    .line 2635
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cbt:I

    return v0
.end method

.method public getClickInterval()I
    .locals 1

    .line 1079
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickInterval:I

    return v0
.end method

.method public getClickTimeOutInterval()I
    .locals 1

    .line 1088
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickTimeOutInterval:I

    return v0
.end method

.method public getClickURL()Ljava/lang/String;
    .locals 1

    .line 1185
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_mode()Ljava/lang/String;
    .locals 1

    .line 1143
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->click_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->creativeId:J

    return-wide v0
.end method

.method public getDeepLinkURL()Ljava/lang/String;
    .locals 1

    .line 1201
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndScreenUrl()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endScreenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndcard_click_result()I
    .locals 1

    .line 700
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endcard_click_result:I

    return v0
.end method

.method public getExt_data()Ljava/lang/String;
    .locals 1

    .line 2165
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ext_data:Ljava/lang/String;

    return-object v0
.end method

.method public getFca()I
    .locals 1

    .line 1161
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->fca:I

    return v0
.end method

.method public getFcb()I
    .locals 1

    .line 1169
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->fcb:I

    return v0
.end method

.method public getFlb()I
    .locals 1

    .line 227
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->flb:I

    return v0
.end method

.method public getFlbSkipTime()I
    .locals 1

    .line 235
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->flbSkipTime:I

    return v0
.end method

.method public getGifUrl()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGuidelines()Ljava/lang/String;
    .locals 1

    .line 917
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->guidelines:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .line 1266
    nop

    .line 1267
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1275
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ext1()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ia_ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ext2()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ia_ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getIex()I
    .locals 1

    .line 864
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->iex:I

    return v0
.end method

.method public getImageSize()Ljava/lang/String;
    .locals 1

    .line 1257
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->imageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getImpUA()I
    .locals 1

    .line 708
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impUA:I

    return v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .locals 1

    .line 1217
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractiveCache()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->interactiveCache:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAddSuccesful()I
    .locals 1

    .line 400
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isAddSuccesful:I

    return v0
.end method

.method public getIsClick()I
    .locals 1

    .line 420
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isClick:I

    return v0
.end method

.method public getIsDeleted()I
    .locals 1

    .line 412
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isDeleted:I

    return v0
.end method

.method public getIsDownLoadZip()I
    .locals 1

    .line 325
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isDownLoadZip:I

    return v0
.end method

.method public getJmPd()I
    .locals 1

    .line 408
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->jmPd:I

    return v0
.end method

.method public getJumpResult()Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .locals 1

    .line 1241
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->jumpResult:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIaIcon()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIaOri()I
    .locals 1

    .line 392
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaOri:I

    return v0
.end method

.method public getKeyIaRst()I
    .locals 1

    .line 376
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaRst:I

    return v0
.end method

.method public getKeyIaUrl()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingType()Ljava/lang/String;
    .locals 1

    .line 1151
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->landingType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()I
    .locals 1

    .line 966
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->linkType:I

    return v0
.end method

.method public getLoadTimeoutState()I
    .locals 1

    .line 2217
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->loadTimeoutState:I

    return v0
.end method

.method public getMaitve()I
    .locals 1

    .line 2225
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->maitve:I

    return v0
.end method

.method public getMaitve_src()Ljava/lang/String;
    .locals 1

    .line 2233
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->maitve_src:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaViewHolder()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;
    .locals 1

    .line 883
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mediaViewHolder:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    return-object v0
.end method

.method public getMof_template_url()Ljava/lang/String;
    .locals 1

    .line 2181
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mof_template_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMof_tplid()I
    .locals 1

    .line 2189
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mof_tplid:I

    return v0
.end method

.method public getMp()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mp:Ljava/lang/String;

    return-object v0
.end method

.method public getMraid()Ljava/lang/String;
    .locals 1

    .line 742
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mraid:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;
    .locals 1

    .line 832
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nativeVideoTracking:Lccsancom/mbridge/msdk/foundation/entity/i;

    return-object v0
.end method

.method public getNativeVideoTrackingString()Ljava/lang/String;
    .locals 1

    .line 824
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nativeVideoTrackingString:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeUrl()Ljava/lang/String;
    .locals 1

    .line 1225
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNscpt()I
    .locals 1

    .line 2173
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nscpt:I

    return v0
.end method

.method public getNvT2()I
    .locals 1

    .line 473
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nvT2:I

    return v0
.end method

.method public getOc_time()I
    .locals 1

    .line 301
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->oc_time:I

    return v0
.end method

.method public getOc_type()I
    .locals 1

    .line 293
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->oc_type:I

    return v0
.end method

.method public getOfferType()I
    .locals 1

    .line 925
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->offerType:I

    return v0
.end method

.method public getOmid()Ljava/lang/String;
    .locals 1

    .line 2621
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->omid:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyImpressionURL()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSource()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->pkgSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 2645
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayable_ads_without_video()I
    .locals 1

    .line 774
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->playable_ads_without_video:I

    return v0
.end method

.method public getPlct()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plct:J

    return-wide v0
.end method

.method public getPlctb()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plctb:J

    return-wide v0
.end method

.method public getPv_urls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->pv_urls:Ljava/util/List;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getR()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .line 67
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->readyState:I

    return v0
.end method

.method public getReady_rate()I
    .locals 1

    .line 2157
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ready_rate:I

    return v0
.end method

.method public getReq_ext_data()Ljava/lang/String;
    .locals 1

    .line 2197
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->req_ext_data:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 2

    .line 1097
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestId:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestId:Ljava/lang/String;

    return-object v0

    .line 1100
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_1

    .line 1103
    const-string v1, "k"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestId:Ljava/lang/String;

    .line 1104
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRequestId(Ljava/lang/String;)V

    .line 1106
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1109
    :cond_2
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1110
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestIdNotice()Ljava/lang/String;
    .locals 2

    .line 1120
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    return-object v0

    .line 1123
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_1

    .line 1126
    const-string v1, "k"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    .line 1127
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRequestIdNotice(Ljava/lang/String;)V

    .line 1129
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1132
    :cond_2
    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1133
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getRetarget_offer()I
    .locals 1

    .line 901
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->retarget_offer:I

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .line 949
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardAmount:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .line 957
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->reward_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardPlayStatus()I
    .locals 1

    .line 909
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardPlayStatus:I

    return v0
.end method

.method public getRewardPlus()Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;
    .locals 1

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardPlus:Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    return-object v0
.end method

.method public getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;
    .locals 1

    .line 893
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardTemplateMode:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    return-object v0
.end method

.method public getRtinsType()I
    .locals 1

    .line 627
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rtinsType:I

    return v0
.end method

.method public getSpareOfferFlag()I
    .locals 1

    .line 110
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->spareOfferFlag:I

    return v0
.end method

.method public getTImp()I
    .locals 1

    .line 1006
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->t_imp:I

    return v0
.end method

.method public getT_list()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->t_list:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()I
    .locals 1

    .line 1177
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->tab:I

    return v0
.end method

.method public getTemplate()I
    .locals 1

    .line 1249
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->template:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 872
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ts:J

    return-wide v0
.end method

.method public getUserActivation()Z
    .locals 1

    .line 1213
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->userActivation:Z

    return v0
.end method

.method public getVcn()I
    .locals 1

    .line 99
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->vcn:I

    if-lez v0, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoMD5Value()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .line 1030
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSize()I
    .locals 1

    .line 1022
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoSize:I

    return v0
.end method

.method public getVideoUrlEncode()Ljava/lang/String;
    .locals 1

    .line 1014
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_end_type()I
    .locals 1

    .line 734
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->video_end_type:I

    return v0
.end method

.method public getWatchMile()I
    .locals 1

    .line 1038
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->watchMile:I

    return v0
.end method

.method public getWtick()I
    .locals 1

    .line 1193
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->wtick:I

    return v0
.end method

.method public getcUA()I
    .locals 1

    .line 716
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cUA:I

    return v0
.end method

.method public getcVersionCode()J
    .locals 2

    .line 2657
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cVersionCode:J

    return-wide v0
.end method

.method public getendcard_url()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endcard_url:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveOm()Z
    .locals 1

    .line 2629
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->omid:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBidCampaign()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign:Z

    return v0
.end method

.method public isCallBackImpression()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallBackImpression:Z

    return v0
.end method

.method public isCallbacked()Z
    .locals 1

    .line 2149
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallbacked:Z

    return v0
.end method

.method public isEffectiveOffer(J)Z
    .locals 9

    .line 2606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2607
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    .line 2608
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long v2, v2, v6

    add-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 2610
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public isHasMBTplMark()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->hasMBTplMark:Z

    return v0
.end method

.method public isHasReportAdTrackPause()Z
    .locals 1

    .line 2378
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->hasReportAdTrackPause:Z

    return v0
.end method

.method public isMraid()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 2209
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReady:Z

    return v0
.end method

.method public isReport()Z
    .locals 1

    .line 1067
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport:Z

    return v0
.end method

.method public isReportClick()Z
    .locals 1

    .line 1071
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick:Z

    return v0
.end method

.method public isSpareOffer(JJ)Z
    .locals 7

    .line 2594
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isEffectiveOffer(J)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2595
    return p2

    .line 2597
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2598
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 2599
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide p3

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr p3, v2

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2

    .line 2601
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v2

    add-long/2addr v2, p3

    cmp-long p3, v2, v0

    if-ltz p3, :cond_3

    const/4 p2, 0x1

    :cond_3
    return p2
.end method

.method public needShowIDialog()Z
    .locals 1

    .line 2653
    invoke-super {p0, p0}, Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;->needShowIDialog(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    return v0
.end method

.method public setAdCall(Ljava/lang/String;)V
    .locals 1

    .line 975
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    iget p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->linkType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 977
    const-string p1, "learn more"

    goto :goto_0

    .line 979
    :cond_0
    const-string p1, "install"

    .line 982
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public setAdHtml(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adHtml:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .line 348
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adType:I

    .line 349
    return-void
.end method

.method public setAdZip(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adZip:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setAd_url_list(Ljava/lang/String;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ad_url_list:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->adchoice:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    .line 278
    return-void
.end method

.method public setAdvImp(Ljava/lang/String;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->advImp:Ljava/lang/String;

    .line 999
    return-void
.end method

.method public setAks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->aks:Ljava/util/HashMap;

    .line 640
    return-void
.end method

.method public setAl(Ljava/lang/String;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->al:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setBannerHtml(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setBidToken(Ljava/lang/String;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bidToken:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public setBty(I)V
    .locals 0

    .line 990
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->bty:I

    .line 991
    return-void
.end method

.method public setCacheLevel(I)V
    .locals 0

    .line 1050
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cacheLevel:I

    .line 1051
    return-void
.end method

.method public setCallBackImpression(Z)V
    .locals 0

    .line 1059
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallBackImpression:Z

    .line 1060
    return-void
.end method

.method public setCallbacked(Z)V
    .locals 0

    .line 2153
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallbacked:Z

    .line 2154
    return-void
.end method

.method public setCampaignUnitId(Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignUnitId:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public setCbt(I)V
    .locals 0

    .line 2639
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cbt:I

    .line 2640
    return-void
.end method

.method public setClickInterval(I)V
    .locals 0

    .line 1083
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickInterval:I

    .line 1084
    return-void
.end method

.method public setClickTimeOutInterval(I)V
    .locals 0

    .line 1092
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickTimeOutInterval:I

    .line 1093
    return-void
.end method

.method public setClickURL(Ljava/lang/String;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->clickURL:Ljava/lang/String;

    .line 1190
    return-void
.end method

.method public setClick_mode(Ljava/lang/String;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->click_mode:Ljava/lang/String;

    .line 1148
    return-void
.end method

.method public setCreativeId(J)V
    .locals 0

    .line 156
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->creativeId:J

    .line 157
    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    .line 1206
    return-void
.end method

.method public setEndScreenUrl(Ljava/lang/String;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endScreenUrl:Ljava/lang/String;

    .line 946
    return-void
.end method

.method public setEndcard_click_result(I)V
    .locals 0

    .line 704
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endcard_click_result:I

    .line 705
    return-void
.end method

.method public setExt_data(Ljava/lang/String;)V
    .locals 0

    .line 2169
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ext_data:Ljava/lang/String;

    .line 2170
    return-void
.end method

.method public setFca(I)V
    .locals 0

    .line 1165
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->fca:I

    .line 1166
    return-void
.end method

.method public setFcb(I)V
    .locals 0

    .line 1173
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->fcb:I

    .line 1174
    return-void
.end method

.method public setFlb(I)V
    .locals 0

    .line 231
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->flb:I

    .line 232
    return-void
.end method

.method public setFlbSkipTime(I)V
    .locals 0

    .line 239
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->flbSkipTime:I

    .line 240
    return-void
.end method

.method public setGifUrl(Ljava/lang/String;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->gifUrl:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setGuidelines(Ljava/lang/String;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->guidelines:Ljava/lang/String;

    .line 922
    return-void
.end method

.method public setHasMBTplMark(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->hasMBTplMark:Z

    .line 165
    return-void
.end method

.method public setHasReportAdTrackPause(Z)V
    .locals 0

    .line 2382
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->hasReportAdTrackPause:Z

    .line 2383
    return-void
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->htmlUrl:Ljava/lang/String;

    .line 938
    return-void
.end method

.method public setIa_ext1(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ia_ext1:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setIa_ext2(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ia_ext2:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setIex(I)V
    .locals 0

    .line 868
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->iex:I

    .line 869
    return-void
.end method

.method public setImageSize(Ljava/lang/String;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->imageSize:Ljava/lang/String;

    .line 1262
    return-void
.end method

.method public setImpUA(I)V
    .locals 0

    .line 712
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impUA:I

    .line 713
    return-void
.end method

.method public setImpressionURL(Ljava/lang/String;)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    .line 1222
    return-void
.end method

.method public setInteractiveCache(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->interactiveCache:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setIsAddSuccesful(I)V
    .locals 0

    .line 404
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isAddSuccesful:I

    .line 405
    return-void
.end method

.method public setIsBidCampaign(Z)V
    .locals 0

    .line 688
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign:Z

    .line 689
    return-void
.end method

.method public setIsClick(I)V
    .locals 0

    .line 424
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isClick:I

    .line 425
    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    .line 416
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isDeleted:I

    .line 417
    return-void
.end method

.method public setIsDownLoadZip(I)V
    .locals 0

    .line 329
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isDownLoadZip:I

    .line 330
    return-void
.end method

.method public setIsMraid(Z)V
    .locals 0

    .line 754
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid:Z

    .line 755
    return-void
.end method

.method public setJmPd(I)V
    .locals 0

    .line 429
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->jmPd:I

    .line 430
    return-void
.end method

.method public setJumpResult(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->jumpResult:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 1246
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->k:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setKeyIaIcon(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaIcon:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setKeyIaOri(I)V
    .locals 0

    .line 396
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaOri:I

    .line 397
    return-void
.end method

.method public setKeyIaRst(I)V
    .locals 0

    .line 380
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaRst:I

    .line 381
    return-void
.end method

.method public setKeyIaUrl(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->keyIaUrl:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->label:Ljava/lang/String;

    .line 853
    return-void
.end method

.method public setLandingType(Ljava/lang/String;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->landingType:Ljava/lang/String;

    .line 1156
    return-void
.end method

.method public setLinkType(I)V
    .locals 0

    .line 970
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->linkType:I

    .line 971
    return-void
.end method

.method public setLoadTimeoutState(I)V
    .locals 0

    .line 2221
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->loadTimeoutState:I

    .line 2222
    return-void
.end method

.method public setMaitve(I)V
    .locals 0

    .line 2229
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->maitve:I

    .line 2230
    return-void
.end method

.method public setMaitve_src(Ljava/lang/String;)V
    .locals 0

    .line 2237
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->maitve_src:Ljava/lang/String;

    .line 2238
    return-void
.end method

.method public setMediaViewHolder(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mediaViewHolder:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$b;

    .line 888
    return-void
.end method

.method public setMof_template_url(Ljava/lang/String;)V
    .locals 0

    .line 2185
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mof_template_url:Ljava/lang/String;

    .line 2186
    return-void
.end method

.method public setMof_tplid(I)V
    .locals 0

    .line 2193
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mof_tplid:I

    .line 2194
    return-void
.end method

.method public setMp(Ljava/lang/String;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mp:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public setMraid(Ljava/lang/String;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->mraid:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nativeVideoTracking:Lccsancom/mbridge/msdk/foundation/entity/i;

    .line 837
    return-void
.end method

.method public setNativeVideoTrackingString(Ljava/lang/String;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nativeVideoTrackingString:Ljava/lang/String;

    .line 829
    return-void
.end method

.method public setNoticeUrl(Ljava/lang/String;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    .line 1230
    return-void
.end method

.method public setNscpt(I)V
    .locals 0

    .line 2177
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nscpt:I

    .line 2178
    return-void
.end method

.method public setNvT2(I)V
    .locals 0

    .line 477
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->nvT2:I

    .line 478
    return-void
.end method

.method public setOc_time(I)V
    .locals 0

    .line 305
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->oc_time:I

    .line 306
    return-void
.end method

.method public setOc_type(I)V
    .locals 0

    .line 297
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->oc_type:I

    .line 298
    return-void
.end method

.method public setOfferType(I)V
    .locals 0

    .line 929
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->offerType:I

    .line 930
    return-void
.end method

.method public setOmid(Ljava/lang/String;)V
    .locals 0

    .line 2625
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->omid:Ljava/lang/String;

    .line 2626
    return-void
.end method

.method public setOnlyImpressionURL(Ljava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    .line 1238
    return-void
.end method

.method public setPkgSource(Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->pkgSource:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 2649
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->placementId:Ljava/lang/String;

    .line 2650
    return-void
.end method

.method public setPlayable_ads_without_video(I)V
    .locals 0

    .line 778
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->playable_ads_without_video:I

    .line 779
    return-void
.end method

.method public setPlct(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plct:J

    .line 125
    return-void
.end method

.method public setPlctb(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->plctb:J

    .line 133
    return-void
.end method

.method public setPv_urls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->pv_urls:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->q:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setR(Ljava/lang/String;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->r:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setReady(Z)V
    .locals 0

    .line 2213
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReady:Z

    .line 2214
    return-void
.end method

.method public setReadyState(I)V
    .locals 0

    .line 2205
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->readyState:I

    .line 2206
    return-void
.end method

.method public setReady_rate(I)V
    .locals 0

    .line 2161
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ready_rate:I

    .line 2162
    return-void
.end method

.method public setReport(Z)V
    .locals 0

    .line 1063
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport:Z

    .line 1064
    return-void
.end method

.method public setReportClick(Z)V
    .locals 0

    .line 1075
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick:Z

    .line 1076
    return-void
.end method

.method public setReq_ext_data(Ljava/lang/String;)V
    .locals 0

    .line 2201
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->req_ext_data:Ljava/lang/String;

    .line 2202
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestId:Ljava/lang/String;

    .line 1116
    return-void
.end method

.method public setRequestIdNotice(Ljava/lang/String;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    .line 1139
    return-void
.end method

.method public setRetarget_offer(I)V
    .locals 0

    .line 905
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->retarget_offer:I

    .line 906
    return-void
.end method

.method public setRewardAmount(I)V
    .locals 0

    .line 953
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardAmount:I

    .line 954
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->reward_name:Ljava/lang/String;

    .line 962
    return-void
.end method

.method public setRewardPlayStatus(I)V
    .locals 0

    .line 913
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardPlayStatus:I

    .line 914
    return-void
.end method

.method public setRewardPlus(Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardPlus:Lccsancom/mbridge/msdk/foundation/entity/RewardPlus;

    .line 290
    return-void
.end method

.method public setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rewardTemplateMode:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 898
    return-void
.end method

.method public setRtinsType(I)V
    .locals 0

    .line 631
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->rtinsType:I

    .line 632
    return-void
.end method

.method public setSpareOfferFlag(I)V
    .locals 0

    .line 114
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->spareOfferFlag:I

    .line 115
    return-void
.end method

.method public setTImp(I)V
    .locals 0

    .line 1010
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->t_imp:I

    .line 1011
    return-void
.end method

.method public setT_list(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->t_list:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setTab(I)V
    .locals 0

    .line 1181
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->tab:I

    .line 1182
    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    .line 1253
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->template:I

    .line 1254
    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 876
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->ts:J

    .line 877
    return-void
.end method

.method public setUserActivation(Z)V
    .locals 0

    .line 1209
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->userActivation:Z

    .line 1210
    return-void
.end method

.method public setVcn(I)V
    .locals 0

    .line 106
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->vcn:I

    .line 107
    return-void
.end method

.method public setVideoMD5Value(Ljava/lang/String;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public setVideoResolution(Ljava/lang/String;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoResolution:Ljava/lang/String;

    .line 1035
    return-void
.end method

.method public setVideoSize(I)V
    .locals 0

    .line 1026
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoSize:I

    .line 1027
    return-void
.end method

.method public setVideoUrlEncode(Ljava/lang/String;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    .line 1019
    return-void
.end method

.method public setVideo_end_type(I)V
    .locals 0

    .line 738
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->video_end_type:I

    .line 739
    return-void
.end method

.method public setWatchMile(I)V
    .locals 0

    .line 1042
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->watchMile:I

    .line 1043
    return-void
.end method

.method public setWtick(I)V
    .locals 0

    .line 1197
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->wtick:I

    .line 1198
    return-void
.end method

.method public setcUA(I)V
    .locals 0

    .line 720
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cUA:I

    .line 721
    return-void
.end method

.method public setcVersionCode(J)V
    .locals 0

    .line 2661
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->cVersionCode:J

    .line 2662
    return-void
.end method

.method public setendcard_url(Ljava/lang/String;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->endcard_url:Ljava/lang/String;

    .line 766
    return-void
.end method
