# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/spoom/all/spoom.rbi
#
# spoom-1.1.8

module Spoom
  def self.exec(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Color < T::Enum
  def ansi_code(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Colorize
  def set_color(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet
  def self.srb(*args, &blk); end
  def self.srb_files(*args, &blk); end
  def self.srb_metrics(*args, &blk); end
  def self.srb_tc(*args, &blk); end
  def self.srb_version(*args, &blk); end
  def self.version_from_gemfile_lock(*args, &blk); end
end
class Spoom::Sorbet::Config
  def allowed_extensions; end
  def copy(*args, &blk); end
  def ignore; end
  def initialize(*args, &blk); end
  def no_stdlib(*args, &blk); end
  def no_stdlib=(arg0); end
  def options_string(*args, &blk); end
  def paths(*args, &blk); end
  def self.parse_file(*args, &blk); end
  def self.parse_option(*args, &blk); end
  def self.parse_string(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet::Errors
  def self.sort_errors_by_code(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Sorbet::Errors::Parser
  def append_error(*args, &blk); end
  def close_error(*args, &blk); end
  def error_line_match_regexp(*args, &blk); end
  def initialize(*args, &blk); end
  def match_error_line(*args, &blk); end
  def open_error(*args, &blk); end
  def parse(*args, &blk); end
  def self.parse_string(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Sorbet::Errors::Error
  def <=>(*args, &blk); end
  def code; end
  def file(*args, &blk); end
  def initialize(*args, &blk); end
  def line(*args, &blk); end
  def message; end
  def more(*args, &blk); end
  def to_s(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Comparable
end
module Spoom::LSP
end
class Spoom::LSP::Message
  def as_json; end
  def initialize; end
  def jsonrpc; end
  def to_json(*args); end
end
class Spoom::LSP::Request < Spoom::LSP::Message
  def id; end
  def initialize(id, method, params); end
  def method; end
  def params; end
end
class Spoom::LSP::Notification < Spoom::LSP::Message
  def initialize(method, params); end
  def method; end
  def params; end
end
class Spoom::Printer
  def colorize(*args, &blk); end
  def dedent(*args, &blk); end
  def indent(*args, &blk); end
  def initialize(*args, &blk); end
  def out(*args, &blk); end
  def out=(arg0); end
  def print(*args, &blk); end
  def print_colored(*args, &blk); end
  def printl(*args, &blk); end
  def printn(*args, &blk); end
  def printt(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Colorize
end
module Spoom::LSP::PrintableSymbol
  def accept_printer(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Hover < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def contents; end
  def range; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Position < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def char; end
  def line; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Range < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def end; end
  def self.from_json(json); end
  def self.inherited(s); end
  def start; end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Location < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def range; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  def uri; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::SignatureHelp < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def doc; end
  def label; end
  def params; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::Diagnostic < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def code; end
  def informations; end
  def message; end
  def range; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::DocumentSymbol < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def accept_printer(*args, &blk); end
  def children; end
  def detail; end
  def kind; end
  def kind_string; end
  def location; end
  def name; end
  def range; end
  def self.from_json(json); end
  def self.inherited(s); end
  def to_s; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
  include Spoom::LSP::PrintableSymbol
end
class Spoom::LSP::SymbolPrinter < Spoom::Printer
  def clean_uri(*args, &blk); end
  def initialize(*args, &blk); end
  def prefix; end
  def prefix=(arg0); end
  def print_list(*args, &blk); end
  def print_object(*args, &blk); end
  def print_objects(*args, &blk); end
  def seen; end
  def seen=(arg0); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::LSP::Error < StandardError
end
class Spoom::LSP::Error::AlreadyOpen < Spoom::LSP::Error
end
class Spoom::LSP::Error::BadHeaders < Spoom::LSP::Error
end
class Spoom::LSP::Error::Diagnostics < Spoom::LSP::Error
  def diagnostics; end
  def initialize(uri, diagnostics); end
  def self.from_json(json); end
  def uri; end
end
class Spoom::LSP::ResponseError < Spoom::LSP::Error
  def code; end
  def data; end
  def initialize(code, message, data); end
  def message; end
  def self.from_json(json); end
end
class Spoom::LSP::Client
  def close; end
  def definitions(uri, line, column); end
  def document_symbols(uri); end
  def hover(uri, line, column); end
  def initialize(sorbet_bin, *sorbet_args, path: nil); end
  def next_id; end
  def open(workspace_path); end
  def read; end
  def read_raw; end
  def references(uri, line, column, include_decl = nil); end
  def send(message); end
  def send_raw(json_string); end
  def signatures(uri, line, column); end
  def symbols(query); end
  def type_definitions(uri, line, column); end
end
module Spoom::Sorbet::Sigils
  def self.change_sigil_in_file(*args, &blk); end
  def self.change_sigil_in_files(*args, &blk); end
  def self.file_strictness(*args, &blk); end
  def self.files_with_sigil_strictness(*args, &blk); end
  def self.sigil_string(*args, &blk); end
  def self.strictness_in_content(*args, &blk); end
  def self.update_sigil(*args, &blk); end
  def self.valid_strictness?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Sorbet::MetricsParser
  def self.parse_file(*args, &blk); end
  def self.parse_hash(*args, &blk); end
  def self.parse_string(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Cli
end
module Spoom::Cli::Helper
  def blue(*args, &blk); end
  def check_sorbet_segfault(*args, &blk); end
  def color?(*args, &blk); end
  def colorize(*args, &blk); end
  def cyan(*args, &blk); end
  def exec_path(*args, &blk); end
  def gray(*args, &blk); end
  def green(*args, &blk); end
  def highlight(*args, &blk); end
  def in_sorbet_project!(*args, &blk); end
  def in_sorbet_project?(*args, &blk); end
  def red(*args, &blk); end
  def say(*args, &blk); end
  def say_error(*args, &blk); end
  def sorbet_config(*args, &blk); end
  def sorbet_config_file(*args, &blk); end
  def yellow(*args, &blk); end
  extend T::Helpers
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Colorize
end
class Spoom::Cli::Bump < Thor
  def bump(*args, &blk); end
  def config_files(path: nil); end
  def help(command = nil, subcommand = nil); end
  def print_changes(files, command:, from: nil, to: nil, dry: nil, path: nil); end
  def undo_changes(files, from_strictness); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Spoom::Cli::Helper
end
class Spoom::FileTree
  def add_path(*args, &blk); end
  def add_paths(*args, &blk); end
  def collect_nodes(*args, &blk); end
  def initialize(*args, &blk); end
  def nodes(*args, &blk); end
  def paths(*args, &blk); end
  def print(*args, &blk); end
  def roots(*args, &blk); end
  def strip_prefix(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::FileTree::Node < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def children; end
  def name; end
  def parent; end
  def path(*args, &blk); end
  def self.inherited(s); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::FileTree::TreePrinter < Spoom::Printer
  def initialize(*args, &blk); end
  def node_strictness(*args, &blk); end
  def print_node(*args, &blk); end
  def print_nodes(*args, &blk); end
  def print_tree(*args, &blk); end
  def strictness_color(*args, &blk); end
  def tree(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Cli::Config < Thor
  def help(command = nil, subcommand = nil); end
  def show; end
  include Spoom::Cli::Helper
end
class Spoom::Cli::LSP < Thor
  def defs(file, line, col); end
  def find(query); end
  def help(command = nil, subcommand = nil); end
  def hover(file, line, col); end
  def list; end
  def lsp_client; end
  def refs(file, line, col); end
  def run(&block); end
  def show; end
  def sigs(file, line, col); end
  def symbol_printer; end
  def symbols(file); end
  def to_uri(path); end
  def types(file, line, col); end
  include Spoom::Cli::Helper
end
module Spoom::Coverage
  def self.report(*args, &blk); end
  def self.sigils_tree(*args, &blk); end
  def self.snapshot(*args, &blk); end
  def self.sorbet_config(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Snapshot < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def calls_typed; end
  def calls_typed=(val); end
  def calls_untyped; end
  def calls_untyped=(val); end
  def classes; end
  def classes=(val); end
  def commit_sha; end
  def commit_sha=(val); end
  def commit_timestamp; end
  def commit_timestamp=(val); end
  def duration; end
  def duration=(val); end
  def files; end
  def files=(val); end
  def methods_with_sig; end
  def methods_with_sig=(val); end
  def methods_without_sig; end
  def methods_without_sig=(val); end
  def modules; end
  def modules=(val); end
  def print(*args, &blk); end
  def rbi_files; end
  def rbi_files=(val); end
  def self.from_json(*args, &blk); end
  def self.from_obj(*args, &blk); end
  def self.inherited(s); end
  def sigils; end
  def sigils=(val); end
  def singleton_classes; end
  def singleton_classes=(val); end
  def timestamp; end
  def timestamp=(val); end
  def to_json(*args, &blk); end
  def version_runtime; end
  def version_runtime=(val); end
  def version_static; end
  def version_static=(val); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class Spoom::Coverage::SnapshotPrinter < Spoom::Printer
  def percent(*args, &blk); end
  def print_map(*args, &blk); end
  def print_snapshot(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Coverage::D3
  def self.header_script(*args, &blk); end
  def self.header_style(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Base
  def html(*args, &blk); end
  def id(*args, &blk); end
  def initialize(*args, &blk); end
  def script(*args, &blk); end
  def self.header_script(*args, &blk); end
  def self.header_style(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::CircleMap < Spoom::Coverage::D3::Base
  def script(*args, &blk); end
  def self.header_script(*args, &blk); end
  def self.header_style(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::CircleMap::Sigils < Spoom::Coverage::D3::CircleMap
  def initialize(*args, &blk); end
  def tree_node_score(*args, &blk); end
  def tree_node_strictness(*args, &blk); end
  def tree_node_to_json(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie < Spoom::Coverage::D3::Base
  def initialize(*args, &blk); end
  def script(*args, &blk); end
  def self.header_script(*args, &blk); end
  def self.header_style(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Sigils < Spoom::Coverage::D3::Pie
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Calls < Spoom::Coverage::D3::Pie
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Pie::Sigs < Spoom::Coverage::D3::Pie
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline < Spoom::Coverage::D3::Base
  def area(*args, &blk); end
  def initialize(*args, &blk); end
  def line(*args, &blk); end
  def plot(*args, &blk); end
  def points(*args, &blk); end
  def script(*args, &blk); end
  def self.header_script(*args, &blk); end
  def self.header_style(*args, &blk); end
  def x_scale(*args, &blk); end
  def x_ticks(*args, &blk); end
  def y_scale(*args, &blk); end
  def y_ticks(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Versions < Spoom::Coverage::D3::Timeline
  def initialize(*args, &blk); end
  def plot(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Runtimes < Spoom::Coverage::D3::Timeline
  def initialize(*args, &blk); end
  def plot(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Stacked < Spoom::Coverage::D3::Timeline
  def initialize(*args, &blk); end
  def line(*args, &blk); end
  def plot(*args, &blk); end
  def script(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Sigils < Spoom::Coverage::D3::Timeline::Stacked
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Calls < Spoom::Coverage::D3::Timeline::Stacked
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::Sigs < Spoom::Coverage::D3::Timeline::Stacked
  def initialize(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::Timeline::RBIs < Spoom::Coverage::D3::Timeline::Stacked
  def initialize(*args, &blk); end
  def line(*args, &blk); end
  def plot(*args, &blk); end
  def script(*args, &blk); end
  def tooltip(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::D3::ColorPalette < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def false; end
  def false=(val); end
  def ignore; end
  def ignore=(val); end
  def self.inherited(s); end
  def strict; end
  def strict=(val); end
  def strong; end
  def strong=(val); end
  def true; end
  def true=(val); end
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
class Spoom::Coverage::Template
  def erb(*args, &blk); end
  def get_binding(*args, &blk); end
  def html(*args, &blk); end
  def initialize(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Page < Spoom::Coverage::Template
  def body_html(*args, &blk); end
  def cards(*args, &blk); end
  def footer_html(*args, &blk); end
  def header_html(*args, &blk); end
  def header_script(*args, &blk); end
  def header_style(*args, &blk); end
  def initialize(*args, &blk); end
  def palette(*args, &blk); end
  def title(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Coverage::Cards
end
class Spoom::Coverage::Cards::Card < Spoom::Coverage::Template
  def body; end
  def initialize(*args, &blk); end
  def title(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Erb < Spoom::Coverage::Cards::Card
  def erb(*args, &blk); end
  def html(*args, &blk); end
  def initialize(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Snapshot < Spoom::Coverage::Cards::Card
  def initialize(*args, &blk); end
  def pie_calls(*args, &blk); end
  def pie_sigils(*args, &blk); end
  def pie_sigs(*args, &blk); end
  def snapshot(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Map < Spoom::Coverage::Cards::Card
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline < Spoom::Coverage::Cards::Card
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Sigils < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Calls < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Sigs < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::RBIs < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Versions < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::Timeline::Runtimes < Spoom::Coverage::Cards::Timeline
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Cards::SorbetIntro < Spoom::Coverage::Cards::Erb
  def erb(*args, &blk); end
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Coverage::Report < Spoom::Coverage::Page
  def cards(*args, &blk); end
  def header_html(*args, &blk); end
  def initialize(*args, &blk); end
  def project_name(*args, &blk); end
  def sigils_tree(*args, &blk); end
  def snapshots(*args, &blk); end
  def sorbet_intro_commit(*args, &blk); end
  def sorbet_intro_date(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module Spoom::Git
  def self.checkout(*args, &blk); end
  def self.commit_time(*args, &blk); end
  def self.commit_timestamp(*args, &blk); end
  def self.current_branch(*args, &blk); end
  def self.diff(*args, &blk); end
  def self.epoch_to_time(*args, &blk); end
  def self.exec(*args, &blk); end
  def self.last_commit(*args, &blk); end
  def self.log(*args, &blk); end
  def self.rev_parse(*args, &blk); end
  def self.show(*args, &blk); end
  def self.sorbet_intro_commit(*args, &blk); end
  def self.sorbet_removal_commit(*args, &blk); end
  def self.workdir_clean?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Timeline
  def commits_for_dates(*args, &blk); end
  def initialize(*args, &blk); end
  def months(*args, &blk); end
  def ticks(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class Spoom::Cli::Coverage < Thor
  def bundle_install(path, sha); end
  def help(command = nil, subcommand = nil); end
  def message_no_data(file); end
  def open(file = nil); end
  def parse_time(string, option); end
  def report; end
  def snapshot; end
  def timeline; end
  include Spoom::Cli::Helper
end
class Spoom::Cli::Run < Thor
  def colorize_message(message); end
  def format_error(error, format); end
  def help(command = nil, subcommand = nil); end
  def tc(*arg); end
  include Spoom::Cli::Helper
end
class Spoom::Cli::Main < Thor
  def __print_version; end
  def bump(*args); end
  def config(*args); end
  def coverage(*args); end
  def files; end
  def lsp(*args); end
  def self.exit_on_failure?; end
  def tc(*args); end
  extend T::Sig
  include Spoom::Cli::Helper
end
class Spoom::Error < StandardError
end
