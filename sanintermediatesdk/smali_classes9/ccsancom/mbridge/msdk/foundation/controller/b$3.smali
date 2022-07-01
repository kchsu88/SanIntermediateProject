.class final Lccsancom/mbridge/msdk/foundation/controller/b$3;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$3;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 201
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 202
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$3;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    .line 203
    invoke-static {}, Lccsanandroid/os/Looper;->loop()V

    .line 204
    return-void
.end method
