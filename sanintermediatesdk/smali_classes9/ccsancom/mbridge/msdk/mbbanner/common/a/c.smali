.class public final Lccsancom/mbridge/msdk/mbbanner/common/a/c;
.super Ljava/lang/Object;
.source "BannerUnitData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->a:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->b:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c:I

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->d:I

    .line 11
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->b:Ljava/lang/String;

    .line 13
    iput p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c:I

    .line 14
    iput p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->d:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 38
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c:I

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final b()I
    .locals 1

    .line 34
    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 42
    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->d:I

    return v0
.end method
