.class final Lccsancom/mbridge/msdk/foundation/controller/b$1;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/controller/b;->a(Ljava/util/Map;Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/controller/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/b;Lccsanandroid/content/Context;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$1;->b:Lccsancom/mbridge/msdk/foundation/controller/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b$1;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$1;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->l(Lccsanandroid/content/Context;)V

    .line 126
    return-void
.end method
