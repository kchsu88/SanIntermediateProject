.class public final Lccsancom/mbridge/msdk/foundation/entity/k;
.super Ljava/lang/Object;
.source "ReportData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->c:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->d:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/k;->c:Ljava/lang/String;

    return-object v0
.end method
