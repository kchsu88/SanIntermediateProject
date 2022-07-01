.class final Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;
.super Lccsankotlin/collections/AbstractIterator;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/io/FileTreeWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileTreeWalkIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;,
        Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;,
        Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/collections/AbstractIterator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;",
        "Lccsankotlin/collections/AbstractIterator;",
        "Ljava/io/File;",
        "(Lccsankotlin/io/FileTreeWalk;)V",
        "state",
        "Ljava/util/ArrayDeque;",
        "Lccsankotlin/io/FileTreeWalk$WalkState;",
        "computeNext",
        "",
        "directoryState",
        "Lccsankotlin/io/FileTreeWalk$DirectoryState;",
        "root",
        "gotoNext",
        "BottomUpDirectoryState",
        "SingleFileState",
        "TopDownDirectoryState",
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
.field private final state:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsankotlin/io/FileTreeWalk$WalkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsankotlin/io/FileTreeWalk;


# direct methods
.method public constructor <init>(Lccsankotlin/io/FileTreeWalk;)V
    .locals 3
    .param p1, "this$0"    # Lccsankotlin/io/FileTreeWalk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-direct {p0}, Lccsankotlin/collections/AbstractIterator;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    .line 71
    nop

    .line 72
    nop

    .line 73
    invoke-static {p1}, Lccsankotlin/io/FileTreeWalk;->access$getStart$p(Lccsankotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lccsankotlin/io/FileTreeWalk;->access$getStart$p(Lccsankotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lccsankotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lccsankotlin/io/FileTreeWalk;->access$getStart$p(Lccsankotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;

    invoke-static {p1}, Lccsankotlin/io/FileTreeWalk;->access$getStart$p(Lccsankotlin/io/FileTreeWalk;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;-><init>(Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->done()V

    .line 76
    :goto_0
    nop

    .line 77
    return-void
.end method

.method private final directoryState(Ljava/io/File;)Lccsankotlin/io/FileTreeWalk$DirectoryState;
    .locals 2
    .param p1, "root"    # Ljava/io/File;

    .line 89
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v0}, Lccsankotlin/io/FileTreeWalk;->access$getDirection$p(Lccsankotlin/io/FileTreeWalk;)Lccsankotlin/io/FileWalkDirection;

    move-result-object v0

    sget-object v1, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lccsankotlin/io/FileWalkDirection;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Lccsankotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lccsankotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;

    invoke-direct {v0, p0, p1}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;-><init>(Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    check-cast v0, Lccsankotlin/io/FileTreeWalk$DirectoryState;

    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;

    invoke-direct {v0, p0, p1}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;-><init>(Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    check-cast v0, Lccsankotlin/io/FileTreeWalk$DirectoryState;

    .line 91
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final gotoNext()Ljava/io/File;
    .locals 4

    .line 97
    :goto_0
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/io/FileTreeWalk$WalkState;

    if-eqz v0, :cond_3

    .line 98
    .local v0, "topState":Lccsankotlin/io/FileTreeWalk$WalkState;
    invoke-virtual {v0}, Lccsankotlin/io/FileTreeWalk$WalkState;->step()Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 101
    iget-object v2, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 102
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lccsankotlin/io/FileTreeWalk$WalkState;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v3}, Lccsankotlin/io/FileTreeWalk;->access$getMaxDepth$p(Lccsankotlin/io/FileTreeWalk;)I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v2, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lccsankotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 111
    goto :goto_0

    .line 107
    :cond_2
    :goto_1
    return-object v1

    .line 97
    .end local v0    # "topState":Lccsankotlin/io/FileTreeWalk$WalkState;
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected computeNext()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->gotoNext()Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "nextFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->setNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->done()V

    .line 85
    :goto_0
    return-void
.end method
