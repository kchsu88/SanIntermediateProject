.class public Lccsancom/google/android/material/animation/DrawableAlphaProperty;
.super Lccsanandroid/util/Property;
.source "DrawableAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/graphics/drawable/Drawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAWABLE_ALPHA_COMPAT:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alphaCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;

    invoke-direct {v0}, Lccsancom/google/android/material/animation/DrawableAlphaProperty;-><init>()V

    sput-object v0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lccsanandroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    const-class v0, Ljava/lang/Integer;

    const-string v1, "drawableAlphaCompat"

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    .line 43
    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 2
    .param p1, "object"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 48
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 54
    :cond_1
    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->get(Lccsanandroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "object"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 59
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lccsanandroid/graphics/drawable/Drawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->set(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method
