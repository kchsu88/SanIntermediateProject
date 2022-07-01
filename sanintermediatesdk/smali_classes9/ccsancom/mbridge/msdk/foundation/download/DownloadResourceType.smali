.class public final enum Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
.super Ljava/lang/Enum;
.source "DownloadResourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field public static final enum DOWNLOAD_RESOURCE_TYPE_HTML:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field public static final enum DOWNLOAD_RESOURCE_TYPE_IMAGE:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field public static final enum DOWNLOAD_RESOURCE_TYPE_OTHER:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field public static final enum DOWNLOAD_RESOURCE_TYPE_VIDEO:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field public static final enum DOWNLOAD_RESOURCE_TYPE_ZIP:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;


# instance fields
.field public resourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    const-string v1, "DOWNLOAD_RESOURCE_TYPE_VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 5
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    const-string v3, "DOWNLOAD_RESOURCE_TYPE_ZIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_ZIP:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 6
    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    const-string v5, "DOWNLOAD_RESOURCE_TYPE_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_IMAGE:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 7
    new-instance v5, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    const-string v7, "DOWNLOAD_RESOURCE_TYPE_HTML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_HTML:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 8
    new-instance v7, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    const-string v9, "DOWNLOAD_RESOURCE_TYPE_OTHER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_OTHER:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 3
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->$VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->resourceType:I

    .line 14
    return-void
.end method

.method public static getDownloadResourceType(I)Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
    .locals 0

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 29
    const/4 p0, 0x0

    return-object p0

    .line 27
    :pswitch_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_OTHER:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0

    .line 25
    :pswitch_1
    sget-object p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_HTML:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0

    .line 23
    :pswitch_2
    sget-object p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_IMAGE:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0

    .line 21
    :pswitch_3
    sget-object p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_ZIP:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0

    .line 19
    :pswitch_4
    sget-object p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
    .locals 1

    .line 3
    const-class v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
    .locals 1

    .line 3
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->$VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object v0
.end method
