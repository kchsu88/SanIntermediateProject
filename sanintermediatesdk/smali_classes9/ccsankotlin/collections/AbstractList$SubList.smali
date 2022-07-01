.class final Lccsankotlin/collections/AbstractList$SubList;
.super Lccsankotlin/collections/AbstractList;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsankotlin/collections/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B#\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lccsankotlin/collections/AbstractList$SubList;",
        "E",
        "Lccsankotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lccsankotlin/collections/RandomAccess;",
        "list",
        "fromIndex",
        "",
        "toIndex",
        "(Lccsankotlin/collections/AbstractList;II)V",
        "_size",
        "size",
        "getSize",
        "()I",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private _size:I

.field private final fromIndex:I

.field private final list:Lccsankotlin/collections/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/collections/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/collections/AbstractList;II)V
    .locals 2
    .param p1, "list"    # Lccsankotlin/collections/AbstractList;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/collections/AbstractList<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lccsankotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lccsankotlin/collections/AbstractList$SubList;->list:Lccsankotlin/collections/AbstractList;

    iput p2, p0, Lccsankotlin/collections/AbstractList$SubList;->fromIndex:I

    .line 40
    nop

    .line 41
    sget-object v0, Lccsankotlin/collections/AbstractList;->Companion:Lccsankotlin/collections/AbstractList$Companion;

    invoke-virtual {p1}, Lccsankotlin/collections/AbstractList;->size()I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Lccsankotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 42
    sub-int v0, p3, p2

    iput v0, p0, Lccsankotlin/collections/AbstractList$SubList;->_size:I

    .line 43
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 46
    sget-object v0, Lccsankotlin/collections/AbstractList;->Companion:Lccsankotlin/collections/AbstractList$Companion;

    iget v1, p0, Lccsankotlin/collections/AbstractList$SubList;->_size:I

    invoke-virtual {v0, p1, v1}, Lccsankotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 48
    iget-object v0, p0, Lccsankotlin/collections/AbstractList$SubList;->list:Lccsankotlin/collections/AbstractList;

    iget v1, p0, Lccsankotlin/collections/AbstractList$SubList;->fromIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lccsankotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 51
    iget v0, p0, Lccsankotlin/collections/AbstractList$SubList;->_size:I

    return v0
.end method
