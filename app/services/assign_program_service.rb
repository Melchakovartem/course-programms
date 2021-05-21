class AssignProgramService
  include ActiveModel::Validations

  attr_reader :program, :resource

  validates :program, presence: true
  validates :resource, presence: true

  def initialize(program, resource)
    @program = program
    @resource = resource
  end

  def perform
    return unless valid?

    program.send(resource.class.name.downcase.pluralize) << resource
  end
end
