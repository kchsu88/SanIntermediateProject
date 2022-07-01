.class Lccsancom/vungle/warren/AdLoader$7;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/UnzipUtility$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->unzipFile(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$existingPaths:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 1771
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$7;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$7;->val$existingPaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 8
    .param p1, "extractPath"    # Ljava/lang/String;

    .line 1775
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1777
    .local v0, "toExtract":Ljava/io/File;
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$7;->val$existingPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1778
    .local v2, "existing":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v3, "existingFile":Ljava/io/File;
    invoke-virtual {v3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1781
    return v5

    .line 1783
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1784
    return v5

    .line 1785
    .end local v2    # "existing":Ljava/lang/String;
    .end local v3    # "existingFile":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 1787
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
