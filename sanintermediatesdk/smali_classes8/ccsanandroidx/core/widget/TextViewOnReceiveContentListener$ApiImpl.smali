.class final Lccsanandroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/widget/TextViewOnReceiveContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerce(Lccsanandroid/content/Context;Lccsanandroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "item"    # Lccsanandroid/content/ClipData$Item;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "item",
            "flags"
        }
    .end annotation

    .line 131
    invoke-virtual {p1, p0}, Lccsanandroid/content/ClipData$Item;->coerceToText(Lccsanandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, "text":Ljava/lang/CharSequence;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lccsanandroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method