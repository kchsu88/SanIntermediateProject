.class public abstract Lccsanenhance/d/c;
.super Lccsanenhance/d/b;
.source ""


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanenhance/d/b;-><init>()V

    .line 2
    const-string v0, "foreground"

    iput-object v0, p0, Lccsanenhance/d/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 1

    .line 1
    const-string v0, "foreground"

    invoke-virtual {p0, v0}, Lccsanenhance/d/c;->a(Ljava/lang/String;)V

    return-void
.end method
