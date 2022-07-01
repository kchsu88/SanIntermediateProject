.class final Lccsancom/mbridge/msdk/video/dynview/i/a$3;
.super Lccsancom/mbridge/msdk/widget/a;
.source "DataEnergizeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lccsancom/mbridge/msdk/video/dynview/i/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->b:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->b:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->b:Lccsancom/mbridge/msdk/video/dynview/i/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Z)Z

    .line 188
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->b:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$3;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;)V

    .line 190
    :cond_0
    return-void
.end method
