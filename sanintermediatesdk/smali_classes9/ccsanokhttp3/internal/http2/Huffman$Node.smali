.class final Lccsanokhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http2/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field final children:[Lccsanokhttp3/internal/http2/Huffman$Node;

.field final symbol:I

.field final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Lccsanokhttp3/internal/http2/Huffman$Node;

    iput-object v0, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->children:[Lccsanokhttp3/internal/http2/Huffman$Node;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 211
    iput v0, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->children:[Lccsanokhttp3/internal/http2/Huffman$Node;

    .line 222
    iput p1, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 223
    and-int/lit8 v0, p2, 0x7

    .line 224
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lccsanokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 225
    return-void
.end method
