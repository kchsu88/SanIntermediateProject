.class final Lccsancom/mbridge/msdk/foundation/tools/m$1;
.super Ljava/lang/Object;
.source "SameDiTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/tools/m;->l(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$1;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 320
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/m$1;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/d;->a(Lccsanandroid/content/Context;)V

    .line 321
    return-void
.end method
