.class final enum Lccsancom/google/common/io/Files$FilePredicate$2;
.super Lccsancom/google/common/io/Files$FilePredicate;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/Files$FilePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;ILccsancom/google/common/io/Files$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 928
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 925
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lccsancom/google/common/io/Files$FilePredicate$2;->apply(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 933
    const-string v0, "Files.isFile()"

    return-object v0
.end method
