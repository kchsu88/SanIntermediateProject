.class final Lccsankotlin/sequences/EmptySequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;
.implements Lccsankotlin/sequences/DropTakeSequence;


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0096\u0002J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/sequences/EmptySequence;",
        "Lccsankotlin/sequences/Sequence;",
        "",
        "Lccsankotlin/sequences/DropTakeSequence;",
        "()V",
        "drop",
        "n",
        "",
        "iterator",
        "",
        "take",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/sequences/EmptySequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lccsankotlin/sequences/EmptySequence;

    invoke-direct {v0}, Lccsankotlin/sequences/EmptySequence;-><init>()V

    sput-object v0, Lccsankotlin/sequences/EmptySequence;->INSTANCE:Lccsankotlin/sequences/EmptySequence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(I)Lccsankotlin/sequences/EmptySequence;
    .locals 1
    .param p1, "n"    # I

    .line 46
    sget-object v0, Lccsankotlin/sequences/EmptySequence;->INSTANCE:Lccsankotlin/sequences/EmptySequence;

    return-object v0
.end method

.method public bridge synthetic drop(I)Lccsankotlin/sequences/Sequence;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lccsankotlin/sequences/EmptySequence;->drop(I)Lccsankotlin/sequences/EmptySequence;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/Sequence;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 45
    sget-object v0, Lccsankotlin/collections/EmptyIterator;->INSTANCE:Lccsankotlin/collections/EmptyIterator;

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public take(I)Lccsankotlin/sequences/EmptySequence;
    .locals 1
    .param p1, "n"    # I

    .line 47
    sget-object v0, Lccsankotlin/sequences/EmptySequence;->INSTANCE:Lccsankotlin/sequences/EmptySequence;

    return-object v0
.end method

.method public bridge synthetic take(I)Lccsankotlin/sequences/Sequence;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lccsankotlin/sequences/EmptySequence;->take(I)Lccsankotlin/sequences/EmptySequence;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/Sequence;

    return-object p1
.end method
