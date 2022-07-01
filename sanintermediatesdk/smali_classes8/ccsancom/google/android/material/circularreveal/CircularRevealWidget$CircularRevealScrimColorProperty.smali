.class public Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Lccsanandroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsancom/google/android/material/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsancom/google/android/material/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lccsanandroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 234
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    return-void
.end method


# virtual methods
.method public get(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 240
    invoke-interface {p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 246
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    return-void
.end method
