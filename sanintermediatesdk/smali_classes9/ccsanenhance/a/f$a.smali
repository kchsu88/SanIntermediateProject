.class public Lccsanenhance/a/f$a;
.super Lccsanenhance/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lccsanen/hance/launchsdk/ITracker;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lccsanen/hance/launchsdk/ITracker;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/a/f$a;->c:Lccsanen/hance/launchsdk/ITracker;

    iput-object p2, p0, Lccsanenhance/a/f$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lccsanenhance/a/f$a;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsanenhance/a/f$a;->c:Lccsanen/hance/launchsdk/ITracker;

    iget-object v1, p0, Lccsanenhance/a/f$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lccsanenhance/a/f$a;->e:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lccsanen/hance/launchsdk/ITracker;->collect(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
