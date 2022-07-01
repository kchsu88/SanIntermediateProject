.class public final Lccsanandroidx/core/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Lccsanandroidx/core/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;,
        Lccsanandroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceToText(Lccsanandroid/content/Context;Lccsanandroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
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

    .line 94
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 95
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;->coerce(Lccsanandroid/content/Context;Lccsanandroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;->coerce(Lccsanandroid/content/Context;Lccsanandroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static replaceSelection(Lccsanandroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "editable"    # Lccsanandroid/text/Editable;
    .param p1, "replacement"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editable",
            "replacement"
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lccsanandroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 104
    .local v0, "selStart":I
    invoke-static {p0}, Lccsanandroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 105
    .local v1, "selEnd":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 106
    .local v2, "start":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 107
    .local v3, "end":I
    invoke-static {p0, v3}, Lccsanandroid/text/Selection;->setSelection(Lccsanandroid/text/Spannable;I)V

    .line 108
    invoke-interface {p0, v2, v3, p1}, Lccsanandroid/text/Editable;->replace(IILjava/lang/CharSequence;)Lccsanandroid/text/Editable;

    .line 109
    return-void
.end method


# virtual methods
.method public onReceiveContent(Lccsanandroid/view/View;Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;
    .locals 11
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "payload"    # Lccsanandroidx/core/view/ContentInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "payload"
        }
    .end annotation

    .line 56
    const-string v0, "ReceiveContent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-virtual {p2}, Lccsanandroidx/core/view/ContentInfoCompat;->getSource()I

    move-result v0

    .line 60
    .local v0, "source":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    return-object p2

    .line 71
    :cond_1
    invoke-virtual {p2}, Lccsanandroidx/core/view/ContentInfoCompat;->getClip()Lccsanandroid/content/ClipData;

    move-result-object v1

    .line 72
    .local v1, "clip":Lccsanandroid/content/ClipData;
    invoke-virtual {p2}, Lccsanandroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v2

    .line 73
    .local v2, "flags":I
    move-object v3, p1

    check-cast v3, Lccsanandroid/widget/TextView;

    .line 74
    .local v3, "textView":Lccsanandroid/widget/TextView;
    invoke-virtual {v3}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Lccsanandroid/text/Editable;

    .line 75
    .local v4, "editable":Lccsanandroid/text/Editable;
    invoke-virtual {v3}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    .line 76
    .local v5, "context":Lccsanandroid/content/Context;
    const/4 v6, 0x0

    .line 77
    .local v6, "didFirst":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v1}, Lccsanandroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 78
    invoke-virtual {v1, v7}, Lccsanandroid/content/ClipData;->getItemAt(I)Lccsanandroid/content/ClipData$Item;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lccsanandroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Lccsanandroid/content/Context;Lccsanandroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 79
    .local v8, "itemText":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    .line 80
    if-nez v6, :cond_2

    .line 81
    invoke-static {v4, v8}, Lccsanandroidx/core/widget/TextViewOnReceiveContentListener;->replaceSelection(Lccsanandroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 82
    const/4 v6, 0x1

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {v4}, Lccsanandroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    const-string v10, "\n"

    invoke-interface {v4, v9, v10}, Lccsanandroid/text/Editable;->insert(ILjava/lang/CharSequence;)Lccsanandroid/text/Editable;

    .line 85
    invoke-static {v4}, Lccsanandroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-interface {v4, v9, v8}, Lccsanandroid/text/Editable;->insert(ILjava/lang/CharSequence;)Lccsanandroid/text/Editable;

    .line 77
    .end local v8    # "itemText":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 89
    .end local v7    # "i":I
    :cond_4
    const/4 v7, 0x0

    return-object v7
.end method
