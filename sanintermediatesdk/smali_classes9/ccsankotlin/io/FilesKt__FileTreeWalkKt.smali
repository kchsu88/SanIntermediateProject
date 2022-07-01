.class Lccsankotlin/io/FilesKt__FileTreeWalkKt;
.super Lccsankotlin/io/FilesKt__FileReadWriteKt;
.source "FileTreeWalk.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "walk",
        "Lccsankotlin/io/FileTreeWalk;",
        "Ljava/io/File;",
        "direction",
        "Lccsankotlin/io/FileWalkDirection;",
        "walkBottomUp",
        "walkTopDown",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/io/FilesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsankotlin/io/FilesKt__FileReadWriteKt;-><init>()V

    return-void
.end method

.method public static final walk(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;)Lccsankotlin/io/FileTreeWalk;
    .locals 1
    .param p0, "$this$walk"    # Ljava/io/File;
    .param p1, "direction"    # Lccsankotlin/io/FileWalkDirection;

    const-string v0, "$this$walk"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lccsankotlin/io/FileTreeWalk;

    invoke-direct {v0, p0, p1}, Lccsankotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;)V

    return-object v0
.end method

.method public static synthetic walk$default(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;ILjava/lang/Object;)Lccsankotlin/io/FileTreeWalk;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 259
    sget-object p1, Lccsankotlin/io/FileWalkDirection;->TOP_DOWN:Lccsankotlin/io/FileWalkDirection;

    :cond_0
    invoke-static {p0, p1}, Lccsankotlin/io/FilesKt;->walk(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;)Lccsankotlin/io/FileTreeWalk;

    move-result-object p0

    return-object p0
.end method

.method public static final walkBottomUp(Ljava/io/File;)Lccsankotlin/io/FileTreeWalk;
    .locals 1
    .param p0, "$this$walkBottomUp"    # Ljava/io/File;

    const-string v0, "$this$walkBottomUp"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lccsankotlin/io/FileWalkDirection;->BOTTOM_UP:Lccsankotlin/io/FileWalkDirection;

    invoke-static {p0, v0}, Lccsankotlin/io/FilesKt;->walk(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;)Lccsankotlin/io/FileTreeWalk;

    move-result-object v0

    return-object v0
.end method

.method public static final walkTopDown(Ljava/io/File;)Lccsankotlin/io/FileTreeWalk;
    .locals 1
    .param p0, "$this$walkTopDown"    # Ljava/io/File;

    const-string v0, "$this$walkTopDown"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lccsankotlin/io/FileWalkDirection;->TOP_DOWN:Lccsankotlin/io/FileWalkDirection;

    invoke-static {p0, v0}, Lccsankotlin/io/FilesKt;->walk(Ljava/io/File;Lccsankotlin/io/FileWalkDirection;)Lccsankotlin/io/FileTreeWalk;

    move-result-object v0

    return-object v0
.end method
