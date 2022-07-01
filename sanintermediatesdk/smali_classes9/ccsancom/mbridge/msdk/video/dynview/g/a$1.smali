.class final Lccsancom/mbridge/msdk/video/dynview/g/a$1;
.super Ljava/lang/Object;
.source "MBridgeUI.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/g/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/dynview/d/c;

.field final synthetic b:Lccsanandroid/view/View;

.field final synthetic c:Lccsancom/mbridge/msdk/video/dynview/g/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/g/a;Lccsancom/mbridge/msdk/video/dynview/d/c;Lccsanandroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->c:Lccsancom/mbridge/msdk/video/dynview/g/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->a:Lccsancom/mbridge/msdk/video/dynview/d/c;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->b:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->a:Lccsancom/mbridge/msdk/video/dynview/d/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->b:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/d/c;->a(Lccsanandroid/view/View;)V

    .line 76
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/g/a$1;->a:Lccsancom/mbridge/msdk/video/dynview/d/c;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/d/c;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 81
    return-void
.end method
