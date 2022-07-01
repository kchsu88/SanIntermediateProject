.class public Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;
.super Lccsanandroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsancom/google/android/material/circularreveal/CircularRevealWidget;",
        "Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsancom/google/android/material/circularreveal/CircularRevealWidget;",
            "Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Lccsanandroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {p0, v0, p1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public get(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1
    .param p1, "object"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 191
    invoke-interface {p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->get(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 0
    .param p1, "object"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .param p2, "value"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 196
    invoke-interface {p1, p2}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 197
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->set(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
