.class Lccsancom/vungle/warren/log/LogPersister$5;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/log/LogPersister;->getCrashReportFiles(I)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/log/LogPersister;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/log/LogPersister;

    .line 298
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogPersister$5;->this$0:Lccsancom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "o1"    # Ljava/io/File;
    .param p2, "o2"    # Ljava/io/File;

    .line 301
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 298
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/log/LogPersister$5;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
