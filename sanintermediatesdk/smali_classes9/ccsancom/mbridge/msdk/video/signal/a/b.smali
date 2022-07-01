.class public Lccsancom/mbridge/msdk/video/signal/a/b;
.super Ljava/lang/Object;
.source "DefaultJSBTModule.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/b;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lccsancom/mbridge/msdk/video/signal/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/video/signal/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(ILjava/lang/String;)V
    .locals 0

    .line 11
    sget-object p1, Lccsancom/mbridge/msdk/video/signal/a/b;->a:Ljava/lang/String;

    const-string p2, "click"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 0

    .line 16
    sget-object p1, Lccsancom/mbridge/msdk/video/signal/a/b;->a:Ljava/lang/String;

    const-string p2, "handlerH5Exception"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 21
    sget-object p1, Lccsancom/mbridge/msdk/video/signal/a/b;->a:Ljava/lang/String;

    const-string p2, "reactDeveloper"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
