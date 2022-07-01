.class public final enum Lccsancom/san/mads/mraid/getDownloadingList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/mads/mraid/getDownloadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum ADAPTER_INITIALIZATION_SUCCESS:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum ADAPTER_NOT_FOUND:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum AD_SUCCESS:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum CANCELLED:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum DO_NOT_TRACK:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum EXPIRED:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum GDPR_DOES_NOT_APPLY:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum INTERNAL_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field private static IncentiveDownloadUtils:I

.field public static final enum MISSING_AD_UNIT_ID:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum MRAID_LOAD_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum NETWORK_INVALID_STATE:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum NETWORK_NO_FILL:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum NETWORK_TIMEOUT:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum NO_CONNECTION:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum NO_FILL:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum RENDER_PROCESS_GONE_UNSPECIFIED:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum RENDER_PROCESS_GONE_WITH_CRASH:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum REWARDED_CURRENCIES_PARSING_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum REWARD_NOT_SELECTED:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum SERVER_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum UNSPECIFIED:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum VIDEO_CACHE_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum VIDEO_NOT_AVAILABLE:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum VIDEO_PLAYBACK_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum VIDEO_XZ_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

.field public static final enum WARMUP:Lccsancom/san/mads/mraid/getDownloadingList;

.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:C

.field private static unifiedDownload:I


# instance fields
.field ER_ADAPTER_NOT_FOUND:I

.field ER_INVALID_DATA:I

.field ER_SUCCESS:I

.field ER_TIMEOUT:I

.field ER_UNSPECIFIED:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    invoke-static {}, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener()V

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v1, 0x0

    const-string v2, "AD_SUCCESS"

    const-string v3, "ad successfully loaded."

    invoke-direct {v0, v2, v1, v3}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadingList;->AD_SUCCESS:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 2
    new-instance v1, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v2, 0x1

    const-string v3, "DO_NOT_TRACK"

    const-string v4, "Do not track is enabled."

    invoke-direct {v1, v3, v2, v4}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/san/mads/mraid/getDownloadingList;->DO_NOT_TRACK:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 3
    new-instance v2, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v3, 0x2

    const-string v4, "UNSPECIFIED"

    const-string v5, "Unspecified error."

    invoke-direct {v2, v4, v3, v5}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/mads/mraid/getDownloadingList;->UNSPECIFIED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 6
    new-instance v3, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v4, 0x3

    const-string v5, "NO_FILL"

    const-string v6, "No ads found."

    invoke-direct {v3, v5, v4, v6}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/mads/mraid/getDownloadingList;->NO_FILL:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 7
    new-instance v4, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v5, 0x4

    const-string v6, "WARMUP"

    const-string v7, "Ad unit is warming up. Try again in a few minutes."

    invoke-direct {v4, v6, v5, v7}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsancom/san/mads/mraid/getDownloadingList;->WARMUP:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 8
    new-instance v5, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v6, 0x5

    const-string v7, "SERVER_ERROR"

    const-string v8, "Unable to connect to MoPub adserver."

    invoke-direct {v5, v7, v6, v8}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/mads/mraid/getDownloadingList;->SERVER_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 11
    new-instance v6, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v7, 0x6

    const-string v8, "INTERNAL_ERROR"

    const-string v9, "Unable to serve ad due to invalid internal state."

    invoke-direct {v6, v8, v7, v9}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lccsancom/san/mads/mraid/getDownloadingList;->INTERNAL_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 12
    new-instance v7, Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v8, 0x7

    const-string v9, "RENDER_PROCESS_GONE_WITH_CRASH"

    const-string v10, "Render process for this WebView has crashed."

    invoke-direct {v7, v9, v8, v10}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsancom/san/mads/mraid/getDownloadingList;->RENDER_PROCESS_GONE_WITH_CRASH:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 13
    new-instance v8, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v9, 0x8

    const-string v10, "RENDER_PROCESS_GONE_UNSPECIFIED"

    const-string v11, "Render process is gone for this WebView. Unspecified cause."

    invoke-direct {v8, v10, v9, v11}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lccsancom/san/mads/mraid/getDownloadingList;->RENDER_PROCESS_GONE_UNSPECIFIED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 14
    new-instance v9, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v10, 0x9

    const-string v11, "CANCELLED"

    const-string v12, "Ad request was cancelled."

    invoke-direct {v9, v11, v10, v12}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lccsancom/san/mads/mraid/getDownloadingList;->CANCELLED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 15
    new-instance v10, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v11, 0xa

    const-string v12, "MISSING_AD_UNIT_ID"

    const-string v13, "Unable to serve ad due to missing or empty ad unit ID."

    invoke-direct {v10, v12, v11, v13}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lccsancom/san/mads/mraid/getDownloadingList;->MISSING_AD_UNIT_ID:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 16
    new-instance v11, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v12, 0xb

    const-string v13, "NO_CONNECTION"

    const-string v14, "No internet connection detected."

    invoke-direct {v11, v13, v12, v14}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lccsancom/san/mads/mraid/getDownloadingList;->NO_CONNECTION:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 18
    new-instance v12, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v13, 0xc

    const-string v14, "ADAPTER_NOT_FOUND"

    const-string v15, "Unable to find Native Network or Custom Event adapter."

    invoke-direct {v12, v14, v13, v15}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/getDownloadingList;->ADAPTER_NOT_FOUND:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 19
    new-instance v13, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0xd

    const-string v15, "ADAPTER_CONFIGURATION_ERROR"

    move-object/from16 v16, v12

    const-string v12, "Native Network or Custom Event adapter was configured incorrectly."

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/mads/mraid/getDownloadingList;->ADAPTER_CONFIGURATION_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 20
    new-instance v12, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0xe

    const-string v15, "ADAPTER_INITIALIZATION_SUCCESS"

    move-object/from16 v17, v13

    const-string v13, "AdapterConfiguration initialization success."

    invoke-direct {v12, v15, v14, v13}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/getDownloadingList;->ADAPTER_INITIALIZATION_SUCCESS:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 22
    new-instance v13, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0xf

    const-string v15, "EXPIRED"

    move-object/from16 v18, v12

    const-string v12, "Ad expired since it was not shown within 4 hours."

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/mads/mraid/getDownloadingList;->EXPIRED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 24
    new-instance v12, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0x10

    const-string v15, "NETWORK_TIMEOUT"

    move-object/from16 v19, v13

    const-string v13, "Third-party network failed to respond in a timely manner."

    invoke-direct {v12, v15, v14, v13}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/getDownloadingList;->NETWORK_TIMEOUT:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 25
    new-instance v13, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0x11

    const-string v15, "NETWORK_NO_FILL"

    move-object/from16 v20, v12

    const-string v12, "Third-party network failed to provide an ad."

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/mads/mraid/getDownloadingList;->NETWORK_NO_FILL:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 26
    new-instance v12, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0x12

    const-string v15, "NETWORK_INVALID_STATE"

    move-object/from16 v21, v13

    const-string v13, "Third-party network failed due to invalid internal state."

    invoke-direct {v12, v15, v14, v13}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/getDownloadingList;->NETWORK_INVALID_STATE:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 27
    new-instance v13, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0x13

    const-string v15, "MRAID_LOAD_ERROR"

    move-object/from16 v22, v12

    const-string v12, "Error loading MRAID ad."

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/mads/mraid/getDownloadingList;->MRAID_LOAD_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 28
    new-instance v12, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v14, 0x30

    invoke-static {v14}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v14

    rsub-int/lit8 v14, v14, 0x30

    int-to-char v14, v14

    const/4 v15, 0x0

    invoke-static {v15, v15}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v15

    const/16 v23, 0x0

    move-object/from16 v24, v13

    const-string v13, "VIDEO_CACHE_ERROR"

    move-object/from16 v25, v11

    const-string v11, "\u5771\uec3a\u0cc4\ud47b\ufa97\ucb28\u944a\u9e62\u5600\u49eb\ud9be\u2cf4\u8d89\ud5c1\u88b7\u10cd\ubd9a\u82dc\u9bdc\uee33\u7dee\u728c\u41ee\u0f02\u7a4c\u3cb1\u65bc\u4a5e\u81b1\uc53d\ub233\u83be\u363f\u0ea5\u5c6e\uac22\u4d32\udc67\u0935\u81e9\ucc65\ued68\ubf93\u8067\u6116\ud2a2\u07fe\u8814\ufa4e\ua54e"

    move-object/from16 v26, v10

    const-string v10, "\u338c\u719e\uf1dc\ue432"

    move-object/from16 v27, v9

    const-string v9, "\u5303\uc2cd\u1c01\u1523"

    move-object/from16 v28, v8

    const-string v8, "VIDEO_XZ_ERROR"

    move-object/from16 v29, v7

    const-string v7, "\u06a9\ude9c\uc00a\uc593\ubf41\udd64\ufc43\uf122\u7cd5\uad69\u7d5f\u2bda\u0ad1\u5e62\u13f9\u25c9\uee39\ud48d\u5ea0\u1827\ue9ea\u7a2b\ucebb\u3ca9"

    move-object/from16 v30, v6

    const-string v6, "\u338c\u719e\uf1dc\ue432"

    move-object/from16 v31, v5

    const-string v5, "\u470a\u914e\ue719\u0c2c"

    move-object/from16 v32, v4

    const-string v4, "GDPR_DOES_NOT_APPLY"

    move-object/from16 v33, v3

    const-string v3, "GDPR does not apply. Ignoring consent-related actions."

    move-object/from16 v34, v2

    const-string v2, "REWARDED_CURRENCIES_PARSING_ERROR"

    move-object/from16 v35, v1

    const-string v1, "Error parsing rewarded currencies JSON header."

    move-object/from16 v36, v0

    const-string v0, "REWARD_NOT_SELECTED"

    move-object/from16 v37, v0

    const-string v0, "Reward not selected for rewarded ad."

    move-object/from16 v38, v0

    const-string v0, "VIDEO_NOT_AVAILABLE"

    move-object/from16 v39, v0

    const-string v0, "No video loaded for ad unit."

    move-object/from16 v40, v0

    const-string v0, "VIDEO_PLAYBACK_ERROR"

    move-object/from16 v41, v0

    const-string v0, "Error playing a video."

    cmpl-float v15, v15, v23

    invoke-static {v11, v10, v14, v15, v9}, Lccsancom/san/mads/mraid/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-direct {v12, v13, v10, v9}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/getDownloadingList;->VIDEO_CACHE_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 29
    new-instance v9, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v10, 0x15

    const/high16 v11, -0x1000000

    const/4 v13, 0x0

    invoke-static {v13, v13, v13}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-char v11, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v13

    invoke-static {v7, v6, v11, v13, v5}, Lccsancom/san/mads/mraid/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v8, v10, v5}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lccsancom/san/mads/mraid/getDownloadingList;->VIDEO_XZ_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 31
    new-instance v5, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v6, 0x16

    invoke-direct {v5, v4, v6, v3}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/mads/mraid/getDownloadingList;->GDPR_DOES_NOT_APPLY:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 33
    new-instance v3, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v4, 0x17

    invoke-direct {v3, v2, v4, v1}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/mads/mraid/getDownloadingList;->REWARDED_CURRENCIES_PARSING_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 34
    new-instance v1, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v2, 0x18

    move-object/from16 v4, v37

    move-object/from16 v6, v38

    invoke-direct {v1, v4, v2, v6}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/san/mads/mraid/getDownloadingList;->REWARD_NOT_SELECTED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 36
    new-instance v2, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v4, 0x19

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    invoke-direct {v2, v6, v4, v7}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/mads/mraid/getDownloadingList;->VIDEO_NOT_AVAILABLE:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 37
    new-instance v4, Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v6, 0x1a

    move-object/from16 v7, v41

    invoke-direct {v4, v7, v6, v0}, Lccsancom/san/mads/mraid/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsancom/san/mads/mraid/getDownloadingList;->VIDEO_PLAYBACK_ERROR:Lccsancom/san/mads/mraid/getDownloadingList;

    const/16 v0, 0x1b

    .line 38
    new-array v0, v0, [Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v6, 0x0

    aput-object v36, v0, v6

    const/4 v6, 0x1

    aput-object v35, v0, v6

    const/4 v6, 0x2

    aput-object v34, v0, v6

    const/4 v6, 0x3

    aput-object v33, v0, v6

    const/4 v6, 0x4

    aput-object v32, v0, v6

    const/4 v6, 0x5

    aput-object v31, v0, v6

    const/4 v6, 0x6

    aput-object v30, v0, v6

    const/4 v6, 0x7

    aput-object v29, v0, v6

    const/16 v6, 0x8

    aput-object v28, v0, v6

    const/16 v6, 0x9

    aput-object v27, v0, v6

    const/16 v6, 0xa

    aput-object v26, v0, v6

    const/16 v6, 0xb

    aput-object v25, v0, v6

    const/16 v6, 0xc

    aput-object v16, v0, v6

    const/16 v6, 0xd

    aput-object v17, v0, v6

    const/16 v6, 0xe

    aput-object v18, v0, v6

    const/16 v6, 0xf

    aput-object v19, v0, v6

    const/16 v6, 0x10

    aput-object v20, v0, v6

    const/16 v6, 0x11

    aput-object v21, v0, v6

    const/16 v6, 0x12

    aput-object v22, v0, v6

    const/16 v6, 0x13

    aput-object v24, v0, v6

    const/16 v6, 0x14

    aput-object v12, v0, v6

    const/16 v6, 0x15

    aput-object v9, v0, v6

    const/16 v6, 0x16

    aput-object v5, v0, v6

    const/16 v5, 0x17

    aput-object v3, v0, v5

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const/16 v1, 0x19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    aput-object v4, v0, v1

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadingList;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadingList;

    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_SUCCESS:I

    .line 3
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_ADAPTER_NOT_FOUND:I

    .line 4
    const/4 p1, 0x2

    iput p1, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_TIMEOUT:I

    .line 5
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_INVALID_DATA:I

    .line 6
    const/16 p1, 0x2710

    iput p1, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_UNSPECIFIED:I

    .line 9
    iput-object p3, p0, Lccsancom/san/mads/mraid/getDownloadingList;->message:Ljava/lang/String;

    return-void
.end method

.method static addDownloadListener()V
    .locals 2

    const-wide v0, -0x1bcd0e238e61cc74L    # -4.685617558971932E174

    sput-wide v0, Lccsancom/san/mads/mraid/getDownloadingList;->getDownloadingList:J

    const/4 v0, 0x0

    sput-char v0, Lccsancom/san/mads/mraid/getDownloadingList;->removeDownloadListener:C

    sput v0, Lccsancom/san/mads/mraid/getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/mads/mraid/getDownloadingList;->getDownloadingList:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/mads/mraid/getDownloadingList;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/mads/mraid/getDownloadingList;->removeDownloadListener:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/mads/mraid/getDownloadingList;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-class v0, Lccsancom/san/mads/mraid/getDownloadingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/mads/mraid/getDownloadingList;

    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    goto :goto_0

    :cond_1
    const/16 v0, 0x38

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lccsancom/san/mads/mraid/getDownloadingList;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingList;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadingList;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/getDownloadingList;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingList;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadingList;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/getDownloadingList;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIntCode()I
    .locals 5

    .line 12
    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingList$addDownloadListener;->addDownloadListener:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eqz v0, :cond_5

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingList$addDownloadListener;->addDownloadListener:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :goto_2
    if-eq v0, v1, :cond_4

    .line 12
    sget v2, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1
    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 9
    iget v0, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_UNSPECIFIED:I

    .line 12
    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    rem-int/2addr v3, v1

    return v0

    .line 10
    :cond_3
    iget v0, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_SUCCESS:I

    return v0

    .line 11
    :cond_4
    iget v0, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_ADAPTER_NOT_FOUND:I

    return v0

    .line 12
    :cond_5
    :goto_3
    iget v0, p0, Lccsancom/san/mads/mraid/getDownloadingList;->ER_TIMEOUT:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadingList;->message:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x2c

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
