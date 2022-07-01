.class public final Lccsanandroidx/core/app/ShareCompat;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/ShareCompat$Api16Impl;,
        Lccsanandroidx/core/app/ShareCompat$IntentReader;,
        Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_ACTIVITY_INTEROP:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_PACKAGE"

.field public static final EXTRA_CALLING_PACKAGE_INTEROP:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_PACKAGE"

.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Lccsanandroid/view/Menu;ILccsanandroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 4
    .param p0, "menu"    # Lccsanandroid/view/Menu;
    .param p1, "menuItemId"    # I
    .param p2, "shareIntent"    # Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "menu",
            "menuItemId",
            "shareIntent"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-interface {p0, p1}, Lccsanandroid/view/Menu;->findItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v0

    .line 272
    .local v0, "item":Lccsanandroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 276
    invoke-static {v0, p2}, Lccsanandroidx/core/app/ShareCompat;->configureMenuItem(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/app/ShareCompat$IntentBuilder;)V

    .line 277
    return-void

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find menu item with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in the supplied menu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static configureMenuItem(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 4
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "shareIntent"    # Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "shareIntent"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getActionProvider()Lccsanandroid/view/ActionProvider;

    move-result-object v0

    .line 241
    .local v0, "itemProvider":Lccsanandroid/view/ActionProvider;
    instance-of v1, v0, Lccsanandroid/widget/ShareActionProvider;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lccsanandroid/widget/ShareActionProvider;

    invoke-virtual {p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/widget/ShareActionProvider;-><init>(Lccsanandroid/content/Context;)V

    .local v1, "provider":Lccsanandroid/widget/ShareActionProvider;
    goto :goto_0

    .line 244
    .end local v1    # "provider":Lccsanandroid/widget/ShareActionProvider;
    :cond_0
    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/ShareActionProvider;

    .line 246
    .restart local v1    # "provider":Lccsanandroid/widget/ShareActionProvider;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".sharecompat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Lccsanandroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ShareActionProvider;->setShareIntent(Lccsanandroid/content/Intent;)V

    .line 249
    invoke-interface {p0, v1}, Lccsanandroid/view/MenuItem;->setActionProvider(Lccsanandroid/view/ActionProvider;)Lccsanandroid/view/MenuItem;

    .line 251
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 252
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Lccsanandroid/content/Intent;

    move-result-object v2

    invoke-interface {p0, v2}, Lccsanandroid/view/MenuItem;->setIntent(Lccsanandroid/content/Intent;)Lccsanandroid/view/MenuItem;

    .line 256
    :cond_1
    return-void
.end method

.method public static getCallingActivity(Lccsanandroid/app/Activity;)Lccsanandroid/content/ComponentName;
    .locals 2
    .param p0, "calledActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calledActivity"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getCallingActivity()Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 180
    .local v1, "result":Lccsanandroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 181
    invoke-static {v0}, Lccsanandroidx/core/app/ShareCompat;->getCallingActivity(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 183
    :cond_0
    return-object v1
.end method

.method static getCallingActivity(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    .locals 2
    .param p0, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 201
    const-string v0, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/ComponentName;

    .line 202
    .local v0, "result":Lccsanandroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 203
    const-string v1, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccsanandroid/content/ComponentName;

    .line 205
    :cond_0
    return-object v0
.end method

.method public static getCallingPackage(Lccsanandroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "calledActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calledActivity"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0}, Lccsanandroidx/core/app/ShareCompat;->getCallingPackage(Lccsanandroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_0
    return-object v1
.end method

.method static getCallingPackage(Lccsanandroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 157
    const-string v0, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 159
    const-string v1, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0
.end method
