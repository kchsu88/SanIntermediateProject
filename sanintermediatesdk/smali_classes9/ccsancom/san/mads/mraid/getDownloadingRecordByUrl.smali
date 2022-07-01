.class final enum Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

.field public static final enum LANDSCAPE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

.field public static final enum NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

.field public static final enum PORTRAIT:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;


# instance fields
.field private final mActivityInfoOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->PORTRAIT:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 2
    new-instance v1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    const-string v4, "LANDSCAPE"

    invoke-direct {v1, v4, v3, v2}, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->LANDSCAPE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 3
    new-instance v4, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 4
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->mActivityInfoOrientation:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-object p0
.end method

.method public static values()[Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-object v0
.end method


# virtual methods
.method getActivityInfoOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->mActivityInfoOrientation:I

    return v0
.end method
