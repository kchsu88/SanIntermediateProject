.class Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lazy"
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    sput-object v0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
