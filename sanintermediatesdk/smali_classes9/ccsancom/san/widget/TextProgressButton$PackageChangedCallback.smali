.class abstract Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/widget/TextProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PackageChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/widget/TextProgressButton;


# direct methods
.method private constructor <init>(Lccsancom/san/widget/TextProgressButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;->this$0:Lccsancom/san/widget/TextProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$unifiedDownload;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    return-void
.end method


# virtual methods
.method public abstract changedCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method
