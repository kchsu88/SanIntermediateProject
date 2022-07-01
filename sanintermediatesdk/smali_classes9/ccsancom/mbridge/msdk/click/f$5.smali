.class final Lccsancom/mbridge/msdk/click/f$5;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/click/f;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/f;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/f$5;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 352
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$5;->a:Lccsancom/mbridge/msdk/click/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/f;->b(Lccsancom/mbridge/msdk/click/f;Z)Z

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$5;->a:Lccsancom/mbridge/msdk/click/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;I)I

    .line 354
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$5;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->m(Lccsancom/mbridge/msdk/click/f;)V

    .line 355
    return-void
.end method
