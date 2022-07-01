.class Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/content/res/AppCompatResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final configuration:Lccsanandroid/content/res/Configuration;

.field final value:Lccsanandroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "value"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "configuration"    # Lccsanandroid/content/res/Configuration;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Lccsanandroid/content/res/ColorStateList;

    .line 188
    iput-object p2, p0, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Lccsanandroid/content/res/Configuration;

    .line 189
    return-void
.end method
