.class public Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;
.super Ljava/lang/Object;
.source "MOfferModel.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;


# instance fields
.field private final AD_NUM:Ljava/lang/String;

.field private final API_VERSION:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final CATEGORY:Ljava/lang/String;

.field private final COUNTRY_CODE:Ljava/lang/String;

.field private final CRT_CID:Ljava/lang/String;

.field private final CRT_RID:Ljava/lang/String;

.field private final DO_ACTION_IMPRESSION:I

.field private final DO_ACTION_ONLY_IMPRESSION:I

.field private final E:Ljava/lang/String;

.field private final EC_ID:Ljava/lang/String;

.field private final H5_T:Ljava/lang/String;

.field private final H5_TYPE:Ljava/lang/String;

.field private final HTTP_REQ:Ljava/lang/String;

.field private final IMEI:Ljava/lang/String;

.field private final I_FMD5:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final MCC:Ljava/lang/String;

.field private final MNC:Ljava/lang/String;

.field private final MOF:Ljava/lang/String;

.field private final MOF_DATA:Ljava/lang/String;

.field private final MOF_T:Ljava/lang/String;

.field private final MOF_TEST_UID:Ljava/lang/String;

.field private final MOF_TYPE:Ljava/lang/String;

.field private final MOF_UID:Ljava/lang/String;

.field private final MOF_VER:Ljava/lang/String;

.field private final MORE_OFFER_CLICK:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_APP_ID:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_APP_KEY:Ljava/lang/String;

.field private final MORE_OFFER_DEFAULT_UNIT_ID:Ljava/lang/String;

.field private final MORE_OFFER_LOAD_FAILED:Ljava/lang/String;

.field private final MORE_OFFER_LOAD_SUCCESS:Ljava/lang/String;

.field private final MORE_OFFER_SHOW:Ljava/lang/String;

.field private final MORE_OFFER_SHOW_FAILED:Ljava/lang/String;

.field private final OFFER_ID:Ljava/lang/String;

.field private final OFF_SET:Ljava/lang/String;

.field private final ONLY_IMPRESSION:Ljava/lang/String;

.field private final PARENT_UNIT:Ljava/lang/String;

.field private final PING_MODE:Ljava/lang/String;

.field private final RV_TID:Ljava/lang/String;

.field private final R_ID:Ljava/lang/String;

.field private final SIGN:Ljava/lang/String;

.field private final TNUM:Ljava/lang/String;

.field private final TP_LGP:Ljava/lang/String;

.field private final UC_PARENT_UNIT:Ljava/lang/String;

.field private final UNIT_ID:Ljava/lang/String;

.field private final VALUE_AD_NUM:Ljava/lang/String;

.field private final VALUE_API_VERSION:Ljava/lang/String;

.field private final VALUE_CATEGORY:Ljava/lang/String;

.field private final VALUE_COUNTRY_CODE:Ljava/lang/String;

.field private final VALUE_H5_TYPE:Ljava/lang/String;

.field private final VALUE_HTTP_REQ:Ljava/lang/String;

.field private final VALUE_MOF:Ljava/lang/String;

.field private final VALUE_MOF_TYPE:Ljava/lang/String;

.field private final VALUE_MOF_VER:Ljava/lang/String;

.field private final VALUE_OFF_SET:Ljava/lang/String;

.field private final VALUE_ONLY_IMPRESSION:Ljava/lang/String;

.field private final VALUE_PING_MODE:Ljava/lang/String;

.field private final VALUE_TNUM:Ljava/lang/String;

.field private final V_FMD5:Ljava/lang/String;

.field private cacheImpressionReportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOnlyImpressionReportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private exposeMonitor:Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "1"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_MOF_TYPE:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_H5_TYPE:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_MOF:Ljava/lang/String;

    .line 55
    const-string v1, "CN"

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_COUNTRY_CODE:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_MOF_VER:Ljava/lang/String;

    .line 57
    const-string v1, "0"

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_OFF_SET:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_CATEGORY:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_ONLY_IMPRESSION:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_PING_MODE:Ljava/lang/String;

    .line 61
    const-string v0, "2"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_HTTP_REQ:Ljava/lang/String;

    .line 62
    const-string v0, "20"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_AD_NUM:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_TNUM:Ljava/lang/String;

    .line 64
    const-string v0, "1.3"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->VALUE_API_VERSION:Ljava/lang/String;

    .line 66
    const-string v0, "k"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->K:Ljava/lang/String;

    .line 67
    const-string v0, "mof_testuid"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_TEST_UID:Ljava/lang/String;

    .line 68
    const-string v0, "mcc"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MCC:Ljava/lang/String;

    .line 69
    const-string v0, "mof_uid"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_UID:Ljava/lang/String;

    .line 70
    const-string v0, "mnc"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MNC:Ljava/lang/String;

    .line 71
    const-string v0, "rv_tid"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->RV_TID:Ljava/lang/String;

    .line 72
    const-string v0, "ec_id"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->EC_ID:Ljava/lang/String;

    .line 73
    const-string v0, "tplgp"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->TP_LGP:Ljava/lang/String;

    .line 74
    const-string v0, "v_fmd5"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->V_FMD5:Ljava/lang/String;

    .line 75
    const-string v0, "i_fmd5"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->I_FMD5:Ljava/lang/String;

    .line 76
    const-string v0, "app_id"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->APP_ID:Ljava/lang/String;

    .line 77
    const-string v0, "sign"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->SIGN:Ljava/lang/String;

    .line 79
    const-string v0, "parent_unit"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->PARENT_UNIT:Ljava/lang/String;

    .line 80
    const-string v0, "e"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->E:Ljava/lang/String;

    .line 81
    const-string v0, "mof_type"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_TYPE:Ljava/lang/String;

    .line 82
    const-string v0, "h5_type"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->H5_TYPE:Ljava/lang/String;

    .line 83
    const-string v0, "mof"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF:Ljava/lang/String;

    .line 84
    const-string v0, "country_code"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->COUNTRY_CODE:Ljava/lang/String;

    .line 85
    const-string v0, "mof_ver"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_VER:Ljava/lang/String;

    .line 87
    const-string v0, "crt_cid"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->CRT_CID:Ljava/lang/String;

    .line 88
    const-string v0, "crt_rid"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->CRT_RID:Ljava/lang/String;

    .line 89
    const-string v0, "h5_t"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->H5_T:Ljava/lang/String;

    .line 90
    const-string v0, "mof_t"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_T:Ljava/lang/String;

    .line 92
    const-string v0, "mof_data"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MOF_DATA:Ljava/lang/String;

    .line 93
    const-string v0, "imei"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->IMEI:Ljava/lang/String;

    .line 95
    const-string v0, "offer_id"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->OFFER_ID:Ljava/lang/String;

    .line 96
    const-string v0, "offset"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->OFF_SET:Ljava/lang/String;

    .line 97
    const-string v0, "category"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->CATEGORY:Ljava/lang/String;

    .line 98
    const-string v0, "only_impression"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->ONLY_IMPRESSION:Ljava/lang/String;

    .line 99
    const-string v0, "ping_mode"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->PING_MODE:Ljava/lang/String;

    .line 100
    const-string v0, "http_req"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->HTTP_REQ:Ljava/lang/String;

    .line 101
    const-string v0, "ad_num"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->AD_NUM:Ljava/lang/String;

    .line 102
    const-string v0, "tnum"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->TNUM:Ljava/lang/String;

    .line 103
    const-string v0, "api_version"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->API_VERSION:Ljava/lang/String;

    .line 105
    const-string v0, "uc_parent_unit"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->UC_PARENT_UNIT:Ljava/lang/String;

    .line 111
    const-string v0, "117361"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_DEFAULT_UNIT_ID:Ljava/lang/String;

    .line 115
    const-string v0, "92762"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_DEFAULT_APP_ID:Ljava/lang/String;

    .line 119
    const-string v0, "936dcbdd57fe235fd7cf61c2e93da3c4"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_DEFAULT_APP_KEY:Ljava/lang/String;

    .line 124
    const-string v0, "more offer load success"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_LOAD_SUCCESS:Ljava/lang/String;

    .line 125
    const-string v0, "more offer load failed"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_LOAD_FAILED:Ljava/lang/String;

    .line 126
    const-string v0, "more offer show"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_SHOW:Ljava/lang/String;

    .line 127
    const-string v0, "more offer click"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_CLICK:Ljava/lang/String;

    .line 128
    const-string v0, "more offer show fail"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->MORE_OFFER_SHOW_FAILED:Ljava/lang/String;

    .line 130
    const-string v0, "unit_id"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->UNIT_ID:Ljava/lang/String;

    .line 131
    const-string v0, "r_id"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->R_ID:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->DO_ACTION_IMPRESSION:I

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->DO_ACTION_ONLY_IMPRESSION:I

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->createMoreOfferView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->release()V

    return-void
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;)Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;
    .locals 0

    .line 50
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->exposeMonitor:Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;

    return-object p0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Ljava/lang/String;)I
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->callBackClick(Lccsancom/mbridge/msdk/video/module/a/a;)V

    return-void
.end method

.method private addLikeTextView(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 386
    const-string v0, "mbridge_reward_end_card_like_tv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    .line 387
    if-eqz p1, :cond_1

    .line 388
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    const-string v1, "#ff5f5f5f"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setStrokeData(II)V

    .line 389
    const-string v0, "#FF000000"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextColor(I)V

    .line 390
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v3, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setEachCornerRadius(IIII)V

    .line 391
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextSize(F)V

    .line 392
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setEms(I)V

    .line 394
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 395
    const-string v0, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :cond_0
    const-string v0, "Just\nfor\nYou"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :goto_0
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$7;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 406
    :cond_1
    return-void
.end method

.method private buildAdapter(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 11

    .line 315
    move-object v7, p0

    move-object v8, p3

    new-instance v0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    move-object v1, p1

    invoke-direct {v0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 317
    invoke-virtual {p3, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 318
    new-instance v9, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;

    invoke-direct {v9}, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;-><init>()V

    iput-object v9, v7, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->exposeMonitor:Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;

    .line 320
    new-instance v10, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$4;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v9, p3, v10}, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->a(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;)V

    .line 351
    new-instance v9, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-direct {v9}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;-><init>()V

    .line 352
    invoke-virtual/range {p6 .. p6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->setMoreOfferData(Ljava/util/List;)V

    .line 353
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;

    move-object v1, p2

    invoke-direct {v0, p0, p4, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$5;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsanandroid/view/View;)V

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->setMoreOfferShowCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/b;)V

    .line 363
    if-eqz p5, :cond_0

    .line 364
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->setRewardEndCardurl(Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-virtual {p3, v9}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 367
    new-instance v8, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$6;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/video/module/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->setOnItemClickListener(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$a;)V

    .line 383
    return-void
.end method

.method private buildRequestParams(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 24

    .line 172
    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "k"

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mof_testuid"

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mof_uid"

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mcc"

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mnc"

    invoke-static {v7, v8}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v9

    const-string v10, "rv_tid"

    invoke-static {v9, v10}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ec_id"

    invoke-static {v11, v12}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v13

    const-string v14, "tplgp"

    invoke-static {v13, v14}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 185
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "v_fmd5"

    invoke-static {v15, v13}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 186
    move-object/from16 v17, v13

    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v15

    const-string v15, "i_fmd5"

    invoke-static {v13, v15}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v19

    move-object/from16 p2, v13

    invoke-virtual/range {v19 .. v19}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    const-string v15, "app_id"

    invoke-static {v1, v15, v13}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v20

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v20}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v15

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "sign"

    invoke-static {v1, v15, v13}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v13, "r_id"

    invoke-static {v1, v13, v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v13, 0x1

    move-object/from16 v20, v15

    new-array v15, v13, [Ljava/lang/String;

    const/16 v22, 0x0

    aput-object v2, v15, v22

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "e"

    invoke-static {v1, v13, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v13, "mof_type"

    const-string v15, "1"

    invoke-static {v1, v13, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v13, "h5_type"

    invoke-static {v1, v13, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v13, "mof"

    invoke-static {v1, v13, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v13, "country_code"

    move-object/from16 v23, v14

    const-string v14, "CN"

    invoke-static {v1, v13, v14}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v13, "mof_ver"

    invoke-static {v1, v13, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 206
    const-string v13, "uc_parent_unit"

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v13, "parent_unit"

    invoke-static {v1, v13, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    invoke-static {v1, v8, v7}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v1, v6, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 215
    :try_start_0
    const-string v0, "crt_cid"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 216
    const-string v0, "crt_rid"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 217
    invoke-virtual {v5, v10, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 218
    invoke-virtual {v5, v12, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 219
    move-object/from16 v0, v16

    move-object/from16 v3, v23

    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 220
    move-object/from16 v3, v17

    move-object/from16 v0, v18

    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 221
    move-object/from16 v0, p2

    move-object/from16 v3, v19

    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 222
    const-string v0, "h5_t"

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 223
    const-string v0, "mof_t"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :goto_1
    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v3, "mof_data"

    invoke-static {v1, v3, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "imei"

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "offer_id"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "offset"

    const-string v2, "0"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "category"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "only_impression"

    invoke-static {v1, v0, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "ping_mode"

    invoke-static {v1, v0, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "http_req"

    const-string v2, "2"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "ad_num"

    const-string v2, "20"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "tnum"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "api_version"

    const-string v2, "1.3"

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    nop

    .line 243
    const-string v0, "92762"

    move-object/from16 v2, v21

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "92762936dcbdd57fe235fd7cf61c2e93da3c4"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "117361"

    .line 246
    :cond_2
    const-string v0, "unit_id"

    invoke-static {v1, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private callBackClick(Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 2

    .line 409
    const/16 v0, 0x80

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 410
    return-void
.end method

.method private createMoreOfferView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 13

    .line 250
    move-object v10, p0

    move-object v11, p1

    if-nez p2, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    if-nez v11, :cond_1

    .line 254
    return-void

    .line 256
    :cond_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 257
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    .line 258
    if-nez v7, :cond_2

    .line 259
    return-void

    .line 261
    :cond_2
    const-string v0, "mbridge_reward_end_card_more_offer_rl"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    .line 262
    if-eqz v8, :cond_3

    .line 263
    new-instance v9, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$2;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setMoreOfferCacheReportCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/a;)V

    .line 283
    new-instance v9, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;

    move-object v0, v9

    move-object v2, v8

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$3;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setMoreOfferShowFailedCallBack(Lccsancom/mbridge/msdk/video/dynview/endcard/c;)V

    .line 296
    :cond_3
    const-string v0, "mbridge_reward_end_card_list_rlv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 297
    if-nez v12, :cond_4

    .line 298
    return-void

    .line 300
    :cond_4
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, v12

    move-object v4, v8

    move-object/from16 v5, p3

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->buildAdapter(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 301
    invoke-direct {p0, p1, v12}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->addLikeTextView(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 303
    :cond_5
    return-void
.end method

.method private findID(Ljava/lang/String;)I
    .locals 2

    .line 413
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private release()V
    .locals 2

    .line 418
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheImpressionReportList:Ljava/util/List;

    .line 422
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 423
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->cacheOnlyImpressionReportList:Ljava/util/List;

    .line 426
    :cond_1
    return-void
.end method


# virtual methods
.method public bulidMofferAd(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 9

    .line 143
    new-instance v6, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 144
    invoke-direct {p0, v6, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;->buildRequestParams(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 145
    new-instance v7, Lccsancom/mbridge/msdk/video/dynview/e/b;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lccsancom/mbridge/msdk/video/dynview/e/b;-><init>(Lccsanandroid/content/Context;)V

    .line 146
    new-instance v8, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/moffer/MOfferModel;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 165
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/b;

    const p1, 0x7a1200

    const/4 p2, 0x1

    invoke-direct {v4, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>(II)V

    .line 166
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p1

    iget-object v2, p1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, v7

    move-object v3, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/video/dynview/e/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 168
    return-void
.end method
