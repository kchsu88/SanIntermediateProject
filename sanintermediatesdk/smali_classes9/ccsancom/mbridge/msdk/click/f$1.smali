.class final Lccsancom/mbridge/msdk/click/f$1;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsanandroid/content/Context;

.field final synthetic d:Lccsancom/mbridge/msdk/click/f;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/f$1;->d:Lccsancom/mbridge/msdk/click/f;

    iput-object p2, p0, Lccsancom/mbridge/msdk/click/f$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/click/f$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/click/f$1;->c:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f$1;->d:Lccsancom/mbridge/msdk/click/f;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/f$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/f$1;->c:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/click/f;->a(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 103
    return-void
.end method
