.class public Lccsancom/mbridge/msdk/videocommon/c/a;
.super Ljava/lang/Object;
.source "RewardSettingController.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/mbridge/msdk/videocommon/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/c/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/c/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/videocommon/c/b;-><init>(Lccsanandroid/content/Context;)V

    .line 24
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 25
    const-string v1, "app_id"

    invoke-virtual {p1, v1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "sign"

    invoke-virtual {p1, v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p3

    iget-object p3, p3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->k:Ljava/lang/String;

    new-instance v1, Lccsancom/mbridge/msdk/videocommon/c/a$1;

    invoke-direct {v1, p0, p2}, Lccsancom/mbridge/msdk/videocommon/c/a$1;-><init>(Lccsancom/mbridge/msdk/videocommon/c/a;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p3, p1, v1}, Lccsancom/mbridge/msdk/videocommon/c/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 46
    return-void
.end method

.method public final a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V
    .locals 2

    .line 49
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/c/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/videocommon/c/b;-><init>(Lccsanandroid/content/Context;)V

    .line 50
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 51
    const-string v1, "app_id"

    invoke-virtual {p1, v1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "sign"

    invoke-virtual {p1, v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "unit_ids"

    invoke-virtual {p1, v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance p3, Lccsancom/mbridge/msdk/videocommon/c/a$2;

    invoke-direct {p3, p0, p2, p5}, Lccsancom/mbridge/msdk/videocommon/c/a$2;-><init>(Lccsancom/mbridge/msdk/videocommon/c/a;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V

    .line 90
    nop

    .line 1071
    iput-object p4, p3, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 91
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p2

    iget-object p2, p2, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->k:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-virtual {v0, p4, p2, p1, p3}, Lccsancom/mbridge/msdk/videocommon/c/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 92
    return-void
.end method
