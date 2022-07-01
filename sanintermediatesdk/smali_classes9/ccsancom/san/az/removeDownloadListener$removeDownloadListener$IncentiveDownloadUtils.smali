.class Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/az/removeDownloadListener$removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 1
    sget p2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p2, p2, 0x65

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "base.apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v1, p1, 0x55

    xor-int/lit8 p1, p1, 0x55

    or-int/2addr p1, v1

    neg-int p1, p1

    neg-int p1, p1

    const/4 v2, -0x1

    xor-int/2addr p1, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    :cond_2
    or-int/lit8 v1, p1, 0x28

    shl-int/2addr v1, v0

    xor-int/lit8 p1, p1, 0x28

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, v0

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :goto_1
    sget p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 p2, p1, 0x18

    or-int/lit8 p1, p1, 0x18

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x79

    or-int/lit8 v0, v0, 0x79

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    sget p2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p2, 0x45

    and-int/lit8 p2, p2, 0x45

    shl-int/lit8 p2, p2, 0x1

    neg-int p2, p2

    neg-int p2, p2

    and-int v1, v0, p2

    or-int/2addr p2, v0

    add-int/2addr v1, p2

    rem-int/lit16 p2, v1, 0x80

    sput p2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return p1
.end method
