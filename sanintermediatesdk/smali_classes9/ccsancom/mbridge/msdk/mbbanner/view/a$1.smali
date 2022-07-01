.class final Lccsancom/mbridge/msdk/mbbanner/view/a$1;
.super Ljava/lang/Object;
.source "BannerWebViewClient.java"

# interfaces
.implements Lccsanandroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/view/a;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/view/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/view/a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/view/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    return-void
.end method
