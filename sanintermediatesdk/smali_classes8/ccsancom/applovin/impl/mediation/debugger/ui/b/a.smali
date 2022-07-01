.class public Lccsancom/applovin/impl/mediation/debugger/ui/b/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;


# instance fields
.field private a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

.field private b:Lccsanandroid/database/DataSetObserver;

.field private c:Lccsanandroid/widget/FrameLayout;

.field private d:Lccsanandroid/widget/ListView;

.field private e:Lccsancom/applovin/impl/adview/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->d:Lccsanandroid/widget/ListView;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Lccsanandroid/widget/ListView;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mediation_debugger_screenshot.jpeg"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinContentProviderUtils;->cacheJPEGImageWithFileName(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setType(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    const-string v0, "Share Mediation Debugger"

    invoke-static {v1, v0}, Lccsanandroid/content/Intent;->createChooser(Lccsanandroid/content/Intent;Ljava/lang/CharSequence;)Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->startActivity(Lccsanandroid/content/Intent;)V

    return-void
.end method

.method private a(Lccsanandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Z)V

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Lccsanandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    return-object p0
.end method

.method private b()V
    .locals 3

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c()V

    new-instance v0, Lccsancom/applovin/impl/adview/a;

    const/16 v1, 0x32

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Lccsancom/applovin/impl/adview/a;-><init>(Lccsanandroid/content/Context;II)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/a;->setColor(I)V

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c:Lccsanandroid/widget/FrameLayout;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->bringChildToFront(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->e:Lccsancom/applovin/impl/adview/a;

    :cond_0
    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    const-string p1, "MAX Mediation Debugger"

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/applovin/sdk/R$layout;->list_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->setContentView(I)V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->c:Lccsanandroid/widget/FrameLayout;

    sget p1, Lccsancom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ListView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->d:Lccsanandroid/widget/ListView;

    return-void
.end method

.method public onCreateOptionsMenu(Lccsanandroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccsancom/applovin/sdk/R$menu;->mediation_debugger_activity_menu:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/view/MenuInflater;->inflate(ILccsanandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onDestroy()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    return-void
.end method

.method public onOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 2

    sget v0, Lccsancom/applovin/sdk/R$id;->action_share:I

    invoke-interface {p1}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onStart()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->d:Lccsanandroid/widget/ListView;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b()V

    :cond_0
    return-void
.end method

.method public setListAdapter(Lccsancom/applovin/impl/mediation/debugger/ui/b/b;Lccsancom/applovin/impl/sdk/a;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b:Lccsanandroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b:Lccsanandroid/database/DataSetObserver;

    invoke-direct {p0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a(Lccsanandroid/content/Context;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;

    invoke-direct {v0, p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Lccsancom/applovin/impl/sdk/a;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    return-void
.end method
