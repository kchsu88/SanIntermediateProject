.class interface abstract Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResourceManagerHooks"
.end annotation


# virtual methods
.method public abstract createDrawableFor(Lccsanandroidx/appcompat/widget/ResourceManagerInternal;Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
.end method

.method public abstract getTintListForDrawableRes(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
.end method

.method public abstract getTintModeForDrawableRes(I)Lccsanandroid/graphics/PorterDuff$Mode;
.end method

.method public abstract tintDrawable(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z
.end method

.method public abstract tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z
.end method
