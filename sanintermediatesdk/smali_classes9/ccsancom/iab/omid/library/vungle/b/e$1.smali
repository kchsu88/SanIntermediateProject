.class Lccsancom/iab/omid/library/vungle/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/iab/omid/library/vungle/b/e;->a(Lccsanandroid/webkit/WebView;Ljava/lang/StringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/iab/omid/library/vungle/b/e;


# direct methods
.method constructor <init>(Lccsancom/iab/omid/library/vungle/b/e;Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/e$1;->c:Lccsancom/iab/omid/library/vungle/b/e;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/b/e$1;->a:Lccsanandroid/webkit/WebView;

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/b/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/e$1;->a:Lccsanandroid/webkit/WebView;

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/b/e$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
