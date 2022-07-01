.class Lccsanandroidx/core/app/ShareCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static migrateExtraStreamToClipData(Lccsanandroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "streams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1088
    .local p1, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/net/Uri;>;"
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1089
    .local v0, "text":Ljava/lang/CharSequence;
    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "htmlText":Ljava/lang/String;
    new-instance v2, Lccsanandroid/content/ClipData;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 1092
    invoke-virtual {p0}, Lccsanandroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lccsanandroid/content/ClipData$Item;

    .line 1093
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v1, v7, v6}, Lccsanandroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanandroid/net/Uri;)V

    invoke-direct {v2, v7, v4, v5}, Lccsanandroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Lccsanandroid/content/ClipData$Item;)V

    .line 1095
    .local v2, "clipData":Lccsanandroid/content/ClipData;
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "end":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 1096
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/net/Uri;

    .line 1097
    .local v6, "uri":Lccsanandroid/net/Uri;
    new-instance v7, Lccsanandroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Lccsanandroid/content/ClipData$Item;-><init>(Lccsanandroid/net/Uri;)V

    invoke-virtual {v2, v7}, Lccsanandroid/content/ClipData;->addItem(Lccsanandroid/content/ClipData$Item;)V

    .line 1095
    .end local v6    # "uri":Lccsanandroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1100
    .end local v4    # "i":I
    .end local v5    # "end":I
    :cond_0
    invoke-virtual {p0, v2}, Lccsanandroid/content/Intent;->setClipData(Lccsanandroid/content/ClipData;)V

    .line 1101
    invoke-virtual {p0, v3}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 1102
    return-void
.end method

.method static removeClipData(Lccsanandroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->setClipData(Lccsanandroid/content/ClipData;)V

    .line 1106
    invoke-virtual {p0}, Lccsanandroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 1107
    return-void
.end method
