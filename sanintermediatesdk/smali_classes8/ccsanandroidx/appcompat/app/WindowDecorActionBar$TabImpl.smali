.class public Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;
.super Lccsanandroidx/appcompat/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lccsanandroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Lccsanandroid/view/View;

.field private mIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/WindowDecorActionBar;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    .line 1160
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Lccsanandroidx/appcompat/app/ActionBar$Tab;-><init>()V

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lccsanandroidx/appcompat/app/ActionBar$TabListener;
    .locals 1

    .line 1181
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Lccsanandroidx/appcompat/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1278
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Lccsanandroid/view/View;
    .locals 1

    .line 1192
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getIcon()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 1212
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1217
    iget v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1171
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1226
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1259
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->selectTab(Lccsanandroidx/appcompat/app/ActionBar$Tab;)V

    .line 1260
    return-void
.end method

.method public setContentDescription(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1264
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .line 1269
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1270
    iget v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1273
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 1206
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 1207
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 1206
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setCustomView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1197
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Lccsanandroid/view/View;

    .line 1198
    iget v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1201
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1240
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 1231
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 1232
    iget v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1235
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1221
    iput p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1222
    return-void
.end method

.method public setTabListener(Lccsanandroidx/appcompat/app/ActionBar$TabListener;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Lccsanandroidx/appcompat/app/ActionBar$TabListener;

    .line 1186
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Lccsanandroidx/appcompat/app/ActionBar$TabListener;

    .line 1187
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1176
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1177
    return-object p0
.end method

.method public setText(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1254
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1245
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1246
    iget v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1249
    :cond_0
    return-object p0
.end method
