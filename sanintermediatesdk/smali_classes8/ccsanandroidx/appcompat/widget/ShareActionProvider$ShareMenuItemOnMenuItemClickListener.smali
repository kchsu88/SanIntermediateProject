.class Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Lccsanandroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ShareActionProvider;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lccsanandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 362
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ShareActionProvider;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->get(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 364
    .local v0, "dataModel":Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    invoke-interface {p1}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 365
    .local v1, "itemId":I
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Lccsanandroid/content/Intent;

    move-result-object v2

    .line 366
    .local v2, "launchIntent":Lccsanandroid/content/Intent;
    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    :cond_0
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;

    invoke-virtual {v4, v2}, Lccsanandroidx/appcompat/widget/ShareActionProvider;->updateIntent(Lccsanandroid/content/Intent;)V

    .line 372
    :cond_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lccsanandroidx/appcompat/widget/ShareActionProvider;

    iget-object v4, v4, Lccsanandroidx/appcompat/widget/ShareActionProvider;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v4, v2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 374
    .end local v3    # "action":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method
