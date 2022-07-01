.class public Lccsancom/applovin/mediation/adapter/MaxAdapterError;
.super Lccsancom/applovin/impl/mediation/MaxErrorImpl;


# static fields
.field public static final AD_EXPIRED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final AD_FREQUENCY_CAPPED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final AD_NOT_READY:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final BAD_REQUEST:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final ERROR_CODE_AD_EXPIRED:I = -0x145d

.field public static final ERROR_CODE_AD_FREQUENCY_CAPPED:I = -0x145e

.field public static final ERROR_CODE_AD_NOT_READY:I = -0x1455

.field public static final ERROR_CODE_BAD_REQUEST:I = -0x1453

.field public static final ERROR_CODE_INTERNAL_ERROR:I = -0x1459

.field public static final ERROR_CODE_INVALID_CONFIGURATION:I = -0x1452

.field public static final ERROR_CODE_INVALID_LOAD_STATE:I = -0x1451

.field public static final ERROR_CODE_NOT_INITIALIZED:I = -0x1454

.field public static final ERROR_CODE_NO_CONNECTION:I = -0x1457

.field public static final ERROR_CODE_NO_FILL:I = 0xcc

.field public static final ERROR_CODE_REWARD_ERROR:I = -0x14b6

.field public static final ERROR_CODE_SERVER_ERROR:I = -0x1458

.field public static final ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED:I = -0x145b

.field public static final ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT:I = -0x145a

.field public static final ERROR_CODE_TIMEOUT:I = -0x1456

.field public static final ERROR_CODE_UNSPECIFIED:I = -0x1450

.field public static final ERROR_CODE_WEBVIEW_ERROR:I = -0x145c

.field public static final INTERNAL_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final INVALID_CONFIGURATION:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final INVALID_LOAD_STATE:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NOT_INITIALIZED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NO_CONNECTION:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NO_FILL:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final REWARD_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SERVER_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SIGNAL_COLLECTION_NOT_SUPPORTED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SIGNAL_COLLECTION_TIMEOUT:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final TIMEOUT:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final UNSPECIFIED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

.field public static final WEBVIEW_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;


# instance fields
.field private final thirdPartySdkErrorCode:I

.field private final thirdPartySdkErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, 0xcc

    const-string v2, "No Fill"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->NO_FILL:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1450

    const-string v2, "Unspecified Error"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->UNSPECIFIED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1451

    const-string v2, "Invalid Load State"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->INVALID_LOAD_STATE:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1452

    const-string v2, "Invalid Configuration"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->INVALID_CONFIGURATION:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1453

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->BAD_REQUEST:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1454

    const-string v2, "Not Initialized"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->NOT_INITIALIZED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1455

    const-string v2, "Ad Not Ready"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->AD_NOT_READY:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1456

    const-string v2, "Request Timed Out"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->TIMEOUT:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1457

    const-string v2, "No Connection"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->NO_CONNECTION:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1458

    const-string v2, "Server Error"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->SERVER_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1459

    const-string v2, "Internal Error"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->INTERNAL_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x145a

    const-string v2, "Signal Collection Timed Out"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->SIGNAL_COLLECTION_TIMEOUT:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x145b

    const-string v2, "Signal Collection Not Supported"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->SIGNAL_COLLECTION_NOT_SUPPORTED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x145c

    const-string v2, "WebView Error"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->WEBVIEW_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x145d

    const-string v2, "Ad Expired"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->AD_EXPIRED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x145e

    const-string v2, "Ad Frequency Capped"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->AD_FREQUENCY_CAPPED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x14b6

    const-string v2, "Reward Error"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->REWARD_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, v0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    invoke-static {p4}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getThirdPartySdkErrorCode()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    return v0
.end method

.method public getThirdPartySdkErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdapterError{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", thirdPartySdkErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thirdPartySdkErrorMessage=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
