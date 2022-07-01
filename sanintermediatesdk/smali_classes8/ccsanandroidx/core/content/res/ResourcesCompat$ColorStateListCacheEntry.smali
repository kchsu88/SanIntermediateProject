.class Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final mConfiguration:Lccsanandroid/content/res/Configuration;

.field final mValue:Lccsanandroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "value"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "configuration"    # Lccsanandroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "configuration"
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Lccsanandroid/content/res/ColorStateList;

    .line 316
    iput-object p2, p0, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Lccsanandroid/content/res/Configuration;

    .line 317
    return-void
.end method
