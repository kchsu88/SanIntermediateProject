.class final Lccsancom/mbridge/msdk/video/dynview/i/a$4;
.super Ljava/lang/Object;
.source "DataEnergizeWrapper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/h/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lccsancom/mbridge/msdk/video/dynview/i/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;Ljava/util/Map;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 209
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->c:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;)V

    .line 210
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u540e\u81ea\u52a8\u64ad\u653e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto play after "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$4;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method
