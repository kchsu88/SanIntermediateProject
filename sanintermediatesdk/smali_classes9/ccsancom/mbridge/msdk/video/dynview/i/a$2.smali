.class final Lccsancom/mbridge/msdk/video/dynview/i/a$2;
.super Lccsancom/mbridge/msdk/widget/a;
.source "DataEnergizeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lccsancom/mbridge/msdk/video/dynview/i/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->b:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 3

    .line 113
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Z)Z

    .line 115
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->a:Ljava/util/Map;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$2;->b:Ljava/util/List;

    invoke-static {p1, v1, v2, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;Ljava/util/List;I)V

    .line 117
    :cond_0
    return-void
.end method
